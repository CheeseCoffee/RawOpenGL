#include <iostream>
#include <fstream>
#include <sstream>
#include <filesystem>
#include <mach-o/dyld.h>
#include <limits.h>
#include <cstdlib>
#include <iomanip>
#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "stb_image.h"

class MyCursor{
    public:
        MyCursor(){};
        void press(){
            is_pressed = true;
        }
        void release(){
            is_pressed = false;
        }
        bool check(){
            return is_pressed;
        }
        void setposition(double _xpos, double _ypos){
            xpos = _xpos;
            ypos = _ypos;
            std::cout<<xpos<<" "<<ypos<<std::endl;
        }
    private:
        double xpos;
        double ypos;
        bool is_pressed;
};

class MyClass {
    
    public:
        MyClass(float a): _a(a) {}
        float getx(){
            return x_offset;
        };
        float gety(){
            return y_offset;
        };
        float getz(){
            return z_offset;
        };
        float getrotation(){
            return angle;
        };
        void setposition(double x, double y){
            float _new[16]={
            (float)x/320-1-0.1f, 1-(float)y/240-0.1f, 0.0f, 0.0f, //0
            (float)x/320-1-0.1f, 1-(float)y/240+0.1f, 0.0f, 0.0f, //1
            (float)x/320-1+0.1f, 1-(float)y/240+0.1f, 0.0f, 0.0f, //2
            (float)x/320-1+0.1f, 1-(float)y/240-0.1f, 0.0f, 0.0f  //3
            };
            float *end_ptr = &_new[7];
            float *source_ptr = _new;
            float *dest_ptr = positions;
            while(source_ptr <= end_ptr){
                *dest_ptr = *source_ptr;
                source_ptr++;
                dest_ptr++;
                }
            std::cout << "Cursor Position at (" << x << " : " << y << std::endl;
            std::cout << "1:" << positions[0] << " : " << positions[1] << std::endl;
            std::cout << "2:" << positions[2] << " : " << positions[3] << std::endl;
            std::cout << "3:" << positions[4] << " : " << positions[5] << std::endl;
            std::cout << "4:" << positions[6] << " : " << positions[7] << std::endl;
        }
        void refresh(){
            if(moving_left){
                x_offset -= 0.1f;
            }
            if(moving_right){
                x_offset += 0.1f;
            }
            if(moving_up){
                y_offset += 0.1f;
            }
            if(moving_down){
                y_offset -= 0.1f;
            }
            if(moving_forward){
                z_offset += 0.1f;
            }
            if(moving_backward){
                z_offset -= 0.1f;
            }
            if(moving_counterclockwise){
                angle += 1.0f;
            }
            if(moving_clockwise){
                angle -= 1.0f;
            }
            
        }
        void move_left(){
            moving_left = 1;
        }
        void stop_left(){
            moving_left = 0;
        }
        void move_right(){
            moving_right = 1;
        }
        void stop_right(){
            moving_right = 0;
        }
        void move_up(){
            moving_up = 1;
        }
        void stop_up(){
            moving_up = 0;
        }
        void move_down(){
            moving_down = 1;
        }
        void stop_down(){
            moving_down = 0;
        }
        void move_forward(){
            moving_forward = 1;
        }
        void stop_forward(){
            moving_forward = 0;
        }
        void move_backward(){
            moving_backward = 1;
        }
        void stop_backward(){
            moving_backward = 0;
        }
        void move_counterclockwise(){
            moving_counterclockwise = 1;
        }
        void stop_counterclockwise(){
            moving_counterclockwise = 0;
        }
        void move_clockwise(){
            moving_clockwise = 1;
        }
        void stop_clockwise(){
            moving_clockwise = 0;
        }
    private:
        float _a;
        float x_offset = 0.0f;
        float y_offset = 0.0f;
        float z_offset = -10.0f;
        float angle = 0.0f;
        int moving_left = 0;
        int moving_right = 0;
        int moving_up = 0;
        int moving_down = 0;
        int moving_forward = 0;
        int moving_backward = 0;
        int moving_counterclockwise = 0;
        int moving_clockwise = 0;
        float positions[16]={
            -0.1f+_a, -0.1f, 0.0f, 0.0f, //0
            0.1f+_a,  -0.1f, 1.0f, 0.0f, //1
            0.1f+_a,  0.1f, 1.0f, 1.0f, //2
            -0.1f+_a, 0.1f, 0.0f, 1.0f  //3
            };
};

#include "Renderer.h"
#include "VertexBuffer.h"
#include "IndexBuffer.h"
#include "Shader.h"

#include "window_params.h"
#include "callback_functions.h"

int main(void)
{   
    Window_params window_params;

    MyClass a(0.1f);
    MyCursor mycursor;

    float x_offset = 0.0f;
    float y_offset = 0.0f;

    Callback_functions callback_state(a, mycursor, window_params);

    unsigned int indices[]{
        0, 1, 2,
        0, 2, 3
    };

    float testmat[20]={
        -0.5f, -0.5f, 0.0f, 0.0f, 0.0f, //0
         0.5f, -0.5f, 0.0f, 1.0f, 0.0f, //1
         0.5f,  0.5f, 0.0f, 1.0f, 1.0f, //2
        -0.5f,  0.5f, 0.0f, 0.0f, 1.0f  //3
        };

    float cursorarr[]={};
    
    glfwSetWindowUserPointer(window_params.window, &callback_state);

    unsigned int VAO;
    GLCall(glGenVertexArrays(1, &VAO));
    GLCall(glBindVertexArray(VAO));

    VertexBuffer vb(testmat, 5*4*sizeof(float));

    GLCall(glEnableVertexAttribArray(0));
    GLCall(glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5*sizeof(float), 0));

    GLCall(glEnableVertexAttribArray(1));
    GLCall(glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5*sizeof(float), (const void *)12));

    IndexBuffer ib(indices, 6);
    vb.Unbind();
    GLCall(glBindVertexArray(0));

    /*unsigned int cursorVAO;
    GLCall(glGenVertexArrays(1, &cursorVAO));
    GLCall(glBindVertexArray(cursorVAO));

    VertexBuffer vb(testmat, 5*4*sizeof(float));

    GLCall(glEnableVertexAttribArray(0));
    GLCall(glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5*sizeof(float), 0));

    GLCall(glEnableVertexAttribArray(1));
    GLCall(glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5*sizeof(float), (const void *)12));

    IndexBuffer ib(indices, 6);
    vb.Unbind();
    GLCall(glBindVertexArray(0));*/

    

    char buf [PATH_MAX];
    uint32_t bufsize = PATH_MAX;
    std::string exec_path;
    if(!_NSGetExecutablePath(buf, &bufsize))
        exec_path = buf;
    exec_path = exec_path.substr(0, exec_path.rfind("/"));

    const std::string shader_path = exec_path + "/../res/shaders/rotationbasic.shader";
    const std::string pic_path = exec_path + "/../res/textures/python.png";

    Shader shader(shader_path);
    shader.Bind();

    vb.Bind();
    GLCall(glBindVertexArray(VAO));


    int m_Width, m_Height, m_BPP;
    unsigned int tid;
    stbi_set_flip_vertically_on_load(1);
    unsigned char* m_localBuffer = stbi_load(pic_path.c_str(), &m_Width, &m_Height, &m_BPP, 4);
    GLCall(glGenTextures(1, &tid));
    GLCall(glBindTexture(GL_TEXTURE_2D, tid));

    GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR));
    GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR));
    GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE));
    GLCall(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE));
    GLCall(glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, m_Width, m_Height, 0, GL_RGBA, GL_UNSIGNED_BYTE, m_localBuffer));
    GLCall(glBindTexture(GL_TEXTURE_2D, 0));

    if(m_localBuffer)
        stbi_image_free(m_localBuffer);

    GLCall(glActiveTexture(GL_TEXTURE0));
    GLCall(glBindTexture(GL_TEXTURE_2D, tid));

    shader.SetUniform1i("u_Texture", 0);
    

    int i=0;

    while (!glfwWindowShouldClose(window_params.window))
    {
        i+=1;
        if (i%100){
        a.refresh();
        GLCall(glClear(GL_COLOR_BUFFER_BIT));
        
        glm::mat4 proj = glm::ortho(-10.0f, 10.0f, -1.5f, 1.5f, -1.0f, 1.0f);
        glm::mat4 translation_matrix = glm::translate(glm::mat4(1.0f), glm::vec3(a.getx(), a.gety(), a.getz()));
        glm::mat4 rotation_matrix = glm::rotate(translation_matrix, glm::radians(a.getrotation()), glm::vec3(0.0f, 1.0f, 0.0f));
        glm::mat4 perspective = glm::perspective(glm::radians(45.0f),
            float(640)/float(480), 0.1f, 10.0f);

        GLCall(glBindVertexArray(VAO));
        vb.Bind();
        
        shader.Bind();
        shader.SetUniformMat4f("u_MVP", rotation_matrix);
        shader.SetUniformMat4f("u_Perspective", perspective);
        GLCall(glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr));
        shader.Unbind();

        

        vb.Unbind();
        GLCall(glBindVertexArray(0));
        }

        
        GLCall(glClear(GL_COLOR_BUFFER_BIT));
        GLCall(glColor3d(255,0,0));
        GLCall(glBegin(GL_LINE_LOOP));
        GLCall(glVertex2f(0.0,0.0));
        GLCall(    glVertex2f(5.0,2.0));
        GLCall(    glVertex2f(2.0,-5.0));
        GLCall(    glVertex2f(-0.5,-0.5));
        GLCall(    glVertex2f(-5.0,-2.0));
        GLCall(    glVertex2f(-3.0,6.0));
        GLCall(glEnd());
        glFlush();


        if(mycursor.check()){

        }

        glfwSwapBuffers(window_params.window);
        glfwPollEvents();
    }
    glfwTerminate();
    return 0;
}