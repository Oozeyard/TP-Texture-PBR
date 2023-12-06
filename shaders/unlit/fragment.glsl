#version 330 core

/*
// PHONG

/*in vec3 o_positionWorld;
in vec3 o_o_normalWorld;
in vec2 o_uv0;
out vec4 FragColor;

uniform vec4 color;
uniform sampler2D colorTexture;
uniform sampler2D normalTexture;

uniform vec3 lightPos;
uniform vec3 viewPos;
uniform vec3 lightColor;
uniform vec3 objectColor;

float ambientStrength = 0.8;
float specularStrength = 0.8;
float shininess = 32.0;

uniform samplerCube skybox;

void main() {

    vec3 ambient = ambientStrength * lightColor;
    vec3 norm = o_normalWorldize(texture(normalTexture, o_uv0).rgb * 2.0 - 1.0);
    vec3 lightDir = o_normalWorldize(lightPos - o_positionWorld);
    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * lightColor;


    vec3 viewDir = o_normalWorldize(viewPos - o_positionWorld);
    vec3 reflectDir = reflect(-lightDir, norm);
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), shininess);
    vec3 specular = specularStrength * spec * lightColor;

    vec3 result = (ambient + diffuse + specular); //* colorTexture;
    FragColor = vec4(result, 1.0);

    //FragColor = color;
    FragColor *= texture(colorTexture, o_uv0) * color;
    // DEBUG: position
    // FragColor = vec4(o_positionWorld, 1.0);
    // DEBUG: o_normalWorld
    // FragColor = vec4(0.5 * o_o_normalWorldWorld + vec3(0.5) , 1.0);
    // DEBUG: uv0
    // FragColor = vec4(o_uv0, 1.0);

    // Récupérer la o_normalWorld du fragment depuis la o_normalWorld map
}*/

// PBR

out vec4 FragColor;
in vec2 o_uv0;
in vec3 o_positionWorld;
in vec3 o_normalWorld;
in mat3 TBN;

// material parameters
vec3 albedo;
float metallic = 0.6;
float roughness = 0.5;
float ao = 10;

// lights
uniform vec3 color;
uniform vec3 lightPos;
uniform vec3 viewPos;
uniform sampler2D colorTexture;
uniform sampler2D normalTexture;

uniform vec3 camPos;

const float PI = 3.14159265359;
  
float DistributionGGX(vec3 N, vec3 H, float roughness);
float GeometrySchlickGGX(float NdotV, float roughness);
float GeometrySmith(vec3 N, vec3 V, vec3 L, float roughness);
vec3 fresnelSchlick(float cosTheta, vec3 F0);

void main()
{		
    vec3 normalfromTexture = texture(normalTexture, o_uv0).rgb;
    normalfromTexture = normalize(normalfromTexture * 2.0 - 1.0);
    albedo = texture(colorTexture, o_uv0).rgb;

    vec3 N = normalize(TBN * normalfromTexture);
    vec3 V = normalize(camPos - o_positionWorld);

    vec3 F0 = vec3(0.04); 
    F0 = mix(F0, albedo, metallic);
    
	           
    // reflectance equation
    vec3 Lo = vec3(0.0);
    //for(int i = 0; i < 4; ++i) { si on a plusieurs lumières
        // calculate per-light radiance
        vec3 L = normalize(lightPos - o_positionWorld);
        vec3 H = normalize(V + L);
        float distance    = length(lightPos - o_positionWorld);
        float attenuation = 1.0 / (distance * distance);
        vec3 radiance     = viewPos * attenuation;        
        
        // cook-torrance brdf
        float NDF = DistributionGGX(N, H, roughness);        
        float G   = GeometrySmith(N, V, L, roughness);      
        vec3 F    = fresnelSchlick(max(dot(H, V), 0.0), F0);       
        
        vec3 kS = F;
        vec3 kD = vec3(1.0) - kS;
        kD *= 1.0 - metallic;	  
        
        vec3 numerator    = NDF * G * F;
        float denominator = 4.0 * max(dot(N, V), 0.0) * max(dot(N, L), 0.0) + 0.0001;
        vec3 specular     = numerator / denominator;  
            
        // add to outgoing radiance Lo
        float NdotL = max(dot(N, L), 0.0);                
        Lo += (kD * albedo / PI + specular) * radiance * NdotL; 
    //}   
  
    vec3 ambient = vec3(0.07) * albedo * ao;
    vec3 color = ambient + Lo;

    FragColor = vec4(Lo + ambient, 1.0);
}

float DistributionGGX(vec3 N, vec3 H, float roughness)
{
    float a      = roughness*roughness;
    float a2     = a*a;
    float NdotH  = max(dot(N, H), 0.0);
    float NdotH2 = NdotH*NdotH;
	
    float num   = a2;
    float denom = (NdotH2 * (a2 - 1.0) + 1.0);
    denom = PI * denom * denom;
	
    return num / denom;
}

float GeometrySchlickGGX(float NdotV, float roughness)
{
    float r = (roughness + 1.0);
    float k = (r*r) / 8.0;

    float num   = NdotV;
    float denom = NdotV * (1.0 - k) + k;
	
    return num / denom;
}
float GeometrySmith(vec3 N, vec3 V, vec3 L, float roughness)
{
    float NdotV = max(dot(N, V), 0.0);
    float NdotL = max(dot(N, L), 0.0);
    float ggx2  = GeometrySchlickGGX(NdotV, roughness);
    float ggx1  = GeometrySchlickGGX(NdotL, roughness);
	
    return ggx1 * ggx2;
}

vec3 fresnelSchlick(float cosTheta, vec3 F0)
{
    return F0 + (1.0 - F0) * pow(clamp(1.0 - cosTheta, 0.0, 1.0), 5.0);
}  