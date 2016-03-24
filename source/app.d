/*
	Projekt MMM 3c
	Marcin Szymczak
	Michał Woźniak
*/

import std.stdio;
import derelict.glfw3.glfw3;
import derelict.opengl3.gl3;
import core.thread;

import sim;

int main()
{
	Sim symulacja;

	symulacja.init();
	while( !symulacja.over() )
	{
		
		//update	
		//draw
		//sleep 1/60.0 - FRAMETIME
		symulacja.update(1/60.0);
		//sleep!"seconds"(1/60.0);

	};

	return 0;
	/+
	try
	{
		DerelictGLFW3.load();
		DerelictGL3.load();
	}
	catch( Exception e )
	{
		writefln("Error: %s", e.msg );
		return 0;
	}

	GLFWwindow* window;
	if( !glfwInit() )
	{
		"Couldn't initialise GLFW3".writeln();
		return -1;
	}
	window = glfwCreateWindow( 1024, 768, "Metody Modelowania Matematycznego", null, null );
	if(!window)
	{
		"Couldn't create the window".writeln();
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent( window );

	while( !glfwWindowShouldClose(window) )
	{
		/**/
		glfwSwapBuffers(window);

		glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT);
		
		glfwPollEvents();
	}

	glfwTerminate();
	+/

	return 0;
}
