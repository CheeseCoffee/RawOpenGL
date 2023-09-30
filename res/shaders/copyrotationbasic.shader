#shader vertex
#version 330 core
    
layout(location = 0) in vec3 position;
layout(location = 1) in vec2 texCoord;

out vec2 v_TexCoord;
uniform mat4 u_MVP;
uniform mat4 u_Perspective;
    
void main(){
    gl_Position = u_Perspective * u_MVP * vec4(position.x + .5f, position.y, position.z, 1.0f);
    v_TexCoord = texCoord;
}

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_TexCoord;

uniform vec4 u_Color;
uniform sampler2D u_Texture;

void main(){
    vec4 texColor = texture(u_Texture, v_TexCoord);
    color = texColor;
}