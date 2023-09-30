#pragma once

class Callback_functions
{
public:
    Callback_functions(MyClass& obj1, MyCursor& obj2, Window_params& window_params):
    obj1(obj1), obj2(obj2), window_params(window_params)
    {
        glfwSetKeyCallback(window_params.window, key_callback);
        glfwSetMouseButtonCallback(window_params.window, mouse_button_callback);
        glfwSetCursorPosCallback(window_params.window, cursor_position_callback);
    }
private:
    MyClass& obj1;
    MyCursor& obj2;
    Window_params& window_params;

    static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
    {
        if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
            glfwSetWindowShouldClose(window, GLFW_TRUE);
        
        Callback_functions * state = reinterpret_cast<Callback_functions *>(glfwGetWindowUserPointer(window));
        
        if (key == GLFW_KEY_LEFT && action == GLFW_PRESS)
            state->obj1.move_left();
        if (key == GLFW_KEY_LEFT && action == GLFW_RELEASE)
            state->obj1.stop_left();
                    
        if (key == GLFW_KEY_RIGHT && action == GLFW_PRESS)
            state->obj1.move_right();
        if (key == GLFW_KEY_RIGHT && action == GLFW_RELEASE)
            state->obj1.stop_right();

        if (key == GLFW_KEY_UP && action == GLFW_PRESS)
            state->obj1.move_up();
        if (key == GLFW_KEY_UP && action == GLFW_RELEASE)
            state->obj1.stop_up();

        if (key == GLFW_KEY_DOWN && action == GLFW_PRESS)
            state->obj1.move_down();
        if (key == GLFW_KEY_DOWN && action == GLFW_RELEASE)
            state->obj1.stop_down();

        if (key == GLFW_KEY_S && action == GLFW_PRESS)
            state->obj1.move_backward();
        if (key == GLFW_KEY_S && action == GLFW_RELEASE)
            state->obj1.stop_backward();

        if (key == GLFW_KEY_W && action == GLFW_PRESS)
            state->obj1.move_forward();
        if (key == GLFW_KEY_W && action == GLFW_RELEASE)
            state->obj1.stop_forward();

        if (key == GLFW_KEY_A && action == GLFW_PRESS)
            state->obj1.move_counterclockwise();
        if (key == GLFW_KEY_A && action == GLFW_RELEASE)
            state->obj1.stop_counterclockwise();

        if (key == GLFW_KEY_D && action == GLFW_PRESS)
            state->obj1.move_clockwise();
        if (key == GLFW_KEY_D && action == GLFW_RELEASE)
            state->obj1.stop_clockwise();
    }

    static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
    {
        Callback_functions * state = reinterpret_cast<Callback_functions *>(glfwGetWindowUserPointer(window));

        if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_PRESS)
            state->obj2.press();
        if(button == GLFW_MOUSE_BUTTON_LEFT && action == GLFW_RELEASE) 
            state->obj2.release();

    }

    static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos)
    {
        Callback_functions * state = reinterpret_cast<Callback_functions *>(glfwGetWindowUserPointer(window));
        if(state->obj2.check())
            state->obj2.setposition(xpos, ypos);
        //std::cout << "Cursor Position at (" << xpos << " : " << ypos << std::endl;
    }
};