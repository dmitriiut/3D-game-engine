#version 330

layout (location=0) in vec3 position;
layout (location=1) in vec2 texCoord;
layout (location=2) in vec3 vertexNormal;
layout (location=5) in mat4 modelInstancedMatrix;

uniform int isInstanced;
uniform mat4 modelNonInstancedMatrix;
uniform mat4 lightViewMatrix;
uniform mat4 orthoProjectionMatrix;

void main()
{
    vec4 initPos = vec4(0, 0, 0, 0);
        mat4 modelMatrix;
        if ( isInstanced > 0 )
        {
            modelMatrix = modelInstancedMatrix;
            initPos = vec4(position, 1.0);
        }
    else
        {
            modelMatrix = modelNonInstancedMatrix;
        }
        gl_Position = orthoProjectionMatrix * lightViewMatrix * modelMatrix * initPos;
}
