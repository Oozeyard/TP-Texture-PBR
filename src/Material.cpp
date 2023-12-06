// Local includes
#include "Material.h"
#include "Shader.h"
// GLM includes
#include <glm/glm.hpp>
#include <glm/gtc/type_ptr.hpp>
// OPENGL includes
#include <GL/glew.h>
#include <GL/glut.h>
#include "Texture.h"
#include "Context.h"
#include "stb_image.h"
#include <iostream>

unsigned int loadCubemap(std::vector<std::string> faces)
{
    unsigned int textureID;
    glGenTextures(1, &textureID);
    glBindTexture(GL_TEXTURE_CUBE_MAP, textureID);

    int width, height, nrChannels;
    for (unsigned int i = 0; i < faces.size(); i++)
    {
        unsigned char *data = stbi_load(faces[i].c_str(), &width, &height, &nrChannels, 0);
        if (data)
        {
            glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i, 
                         0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data
            );
            stbi_image_free(data);
        }
        else
        {
            std::cout << "Cubemap tex failed to load at path: " << faces[i] << std::endl;
            stbi_image_free(data);
        }
    }
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);

    return textureID;
}  

Material::~Material() {
	if (m_program != 0) {
		glDeleteProgram(m_program);
	}
}

void Material::init() {
	// TODO : Change shader by your
	m_program = load_shaders("shaders/unlit/vertex.glsl", "shaders/unlit/fragment.glsl");
	m_program_skybox = load_shaders("shaders/unlit/skyboxvert.glsl", "shaders/unlit/skyboxfrag.glsl");
	check();
	// TODO : set initial parameters
	m_color = {1.0, 1.0, 1.0, 1.0};
	m_lightPos = {0.0, 1.5, 0.0};
	m_lightColor = {1.0, 1.0, 1.0};
	m_texture = loadTexture2DFromFilePath("data/Plane/TwoSidedPlane_BaseColor.png");
	m_normal = loadTexture2DFromFilePath("data/Plane/TwoSidedPlane_Normal.png");

	std::vector<std::string> faces  = {
    "./data/skybox/right.jpg",
    "./data/skybox/left.jpg",
    "./data/skybox/top.jpg",
    "./data/skybox/bottom.jpg",
    "./data/skybox/front.jpg",
    "./data/skybox/back.jpg"
	};

	unsigned int skyboxtexure = loadCubemap(faces);

    float skyboxVertices[] = {
        // positions          
        -30.0f,  30.0f, -30.0f,
        -30.0f, -30.0f, -30.0f,
        30.0f, -30.0f, -30.0f,
        30.0f, -30.0f, -30.0f,
        30.0f,  30.0f, -30.0f,
        -30.0f,  30.0f, -30.0f,

        -30.0f, -30.0f,  30.0f,
        -30.0f, -30.0f, -30.0f,
        -30.0f,  30.0f, -30.0f,
        -30.0f,  30.0f, -30.0f,
        -30.0f,  30.0f,  30.0f,
        -30.0f, -30.0f,  30.0f,

        30.0f, -30.0f, -30.0f,
        30.0f, -30.0f,  30.0f,
        30.0f,  30.0f,  30.0f,
        30.0f,  30.0f,  30.0f,
        30.0f,  30.0f, -30.0f,
        30.0f, -30.0f, -30.0f,

        -30.0f, -30.0f,  30.0f,
        -30.0f,  30.0f,  30.0f,
        30.0f,  30.0f,  30.0f,
        30.0f,  30.0f,  30.0f,
        30.0f, -30.0f,  30.0f,
        -30.0f, -30.0f,  30.0f,

        -30.0f,  30.0f, -30.0f,
        30.0f,  30.0f, -30.0f,
        30.0f,  30.0f,  30.0f,
        30.0f,  30.0f,  30.0f,
        -30.0f,  30.0f,  30.0f,
        -30.0f,  30.0f, -30.0f,

        -30.0f, -30.0f, -30.0f,
        -30.0f, -30.0f,  30.0f,
        30.0f, -30.0f, -30.0f,
        30.0f, -30.0f, -30.0f,
        -30.0f, -30.0f,  30.0f,
        30.0f, -30.0f,  30.0f
    };
    glGenVertexArrays(1, &skyboxVAO);
    glGenBuffers(1, &skyboxVBO);
    glBindVertexArray(skyboxVAO);
    glBindBuffer(GL_ARRAY_BUFFER, skyboxVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(skyboxVertices), &skyboxVertices, GL_STATIC_DRAW);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
}

void Material::clear() {
	// nothing to clear
	// TODO: Add the texture or buffer you want to destroy for your material
}

void Material::bind(int idx) {
	check();
	if (idx == 0) glUseProgram(m_program_skybox);
	else glUseProgram(m_program);
	internalBind(idx);
}

void Material::internalBind(int idx) {
	if(idx == 0){
		glUniform3fv(getUniform("viewPos"), 1, glm::value_ptr(Context::camera.position));
		if (skyboxtexure != -1) {
            glActiveTexture(GL_TEXTURE0+2);
			glBindTexture(GL_TEXTURE_CUBE_MAP, skyboxtexure);
			glUniform1i(glGetUniformLocation(m_program_skybox,"skybox"), GL_TEXTURE0+2);
        }
 		glDepthFunc(GL_LEQUAL);  // change depth function so depth test passes when values are equal to depth buffer's content
        // skybox cube
        glBindVertexArray(skyboxVAO);
        glDrawArrays(GL_TRIANGLES, 0, 36);
        glBindVertexArray(0);
        glDepthFunc(GL_LESS); // set depth function back to default

    } else {
		// bind parameters
		GLint color = getUniform("color");
		glUniform4fv(color, 1, glm::value_ptr(m_color));
		if (m_texture != -1) {
			glActiveTexture(GL_TEXTURE0);
			glBindTexture(GL_TEXTURE_2D, m_texture);
			glUniform1i(getUniform("colorTexture"), GL_TEXTURE0); // GL_TEXTURE0
		}
		if (m_normal != -1) {
			glActiveTexture(GL_TEXTURE0 + 1);
			glBindTexture(GL_TEXTURE_2D, m_normal);
			glUniform1i(getUniform("normalTexture"), GL_TEXTURE0 + 1);
		}

		glUniform3fv(getUniform("lightPos"), 1, glm::value_ptr(m_lightPos));
		glUniform3fv(getUniform("lightColor"), 1, glm::value_ptr(m_lightColor));
		glUniform3fv(getUniform("viewPos"), 1, glm::value_ptr(Context::camera.position));
	}

}

void Material::setMatrices(glm::mat4& projectionMatrix, glm::mat4& viewMatrix, glm::mat4& modelMatrix)
{
	check();
	glUniformMatrix4fv(getUniform("projection"), 1, false, glm::value_ptr(projectionMatrix));
	glUniformMatrix4fv(getUniform("view"), 1, false, glm::value_ptr(viewMatrix));
	glUniformMatrix4fv(getUniform("model"), 1, false, glm::value_ptr(modelMatrix));
}

GLint Material::getAttribute(const std::string& in_attributeName) {
	check();
	return glGetAttribLocation(m_program, in_attributeName.c_str());
}

GLint Material::getUniform(const std::string& in_uniformName) {
	check();
	return glGetUniformLocation(m_program, in_uniformName.c_str());
}
