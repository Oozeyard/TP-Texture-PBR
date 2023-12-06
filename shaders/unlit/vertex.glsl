#version 330 core
/*
layout ( location = 0) in vec3 aPos ;
layout ( location = 1) in vec3 aNormal ;
out vec3 WorldFragPos ;
out vec3 WorldNormal ;
uniform mat4 model ;
uniform mat4 view ;
uniform mat4 projection ;
void main ()
{
gl_Position = projection * view * model * vec4 ( aPos , 1.0) ;
WorldFragPos = vec3 ( model * vec4 ( aPos , 1.0) ) ;
// Normal Matrix
WorldNormal = mat3 ( transpose ( inverse ( model ) ) ) * aNormal ;
}
*/
layout(location = 0) in vec3 position;
layout(location = 1) in vec3 normal;
layout(location = 2) in vec3 tangent;
layout(location = 3) in vec2 uv0;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
//uniform mat4 mvp;
//uniform mat4 modelView;
//uniform mat4 normalMatrix;


out vec3 o_positionWorld;
out vec3 o_normalWorld;
out vec2 o_uv0;
out mat3 TBN;



void main() {
  mat3 normalMatrix = mat3(transpose(inverse(model)));
  o_uv0 = uv0;
  vec4 positionWorld = model * vec4(position, 1.0);

  // Calcul TBN
  vec3 N = normalize(normalMatrix * normal);
  vec3 T = normalize(normalMatrix * tangent);
  vec3 B = cross(N,T);

  TBN = transpose(mat3(T,B,N));

  o_positionWorld = positionWorld.xyz;
  o_normalWorld = normalMatrix * normal;
  gl_Position = projection * view * positionWorld;
}