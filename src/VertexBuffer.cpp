#include <iostream>
#include "VertexBuffer.h"
#include "Renderer.h"

VertexBuffer::VertexBuffer(const void* data, unsigned int size){
    GLCall(glGenBuffers(1, &m_RendererID));
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, m_RendererID));
    GLCall(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
    std::cout<<"AAAAAAAAAAAAAAAAAA"<<std::endl;
    std::cout<<m_RendererID<<std::endl;
}
VertexBuffer::~VertexBuffer(){
    GLCall(glDeleteBuffers(1, &m_RendererID));
}
void VertexBuffer::Update(const void* data, unsigned int size) {
    GLCall(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
}
void VertexBuffer::Bind() const {
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, m_RendererID));
}
void VertexBuffer::Unbind() const {
    GLCall(glBindBuffer(GL_ARRAY_BUFFER, 0));
}