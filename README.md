# PES_PROJECT_2_FRDM
Principles of Embedded Software (Bruce Montgomry ) - Project 2                   
 -Utkarsh Dviwedi and Harsh Rathore




Part 1 – Create a Work Breakdown Structure (WBS) (10 points)
Small (S) = less than 2 hours
Medium (M) = 2 to less than 4 hours
Large (L) = 4 to less than 8 hours
Extra Large = 8 hours or more
So each lowest level sub task of your WBS should say something like:    
Test code – Bruce (M)
Part 2
Make fb_run:  This version of the program will run natively on the Freedom board.  
1)    The program is required to flash the LED in a specific provided pattern (see end of project description) of on and off periods which you will control with a simple timing delay loop.  Your program must meet the timing requirements of each pattern command. 
2)    (Optional – 5 points extra credit) When in the timing loop you will look for a press event from the capacitive touch slider on the board.  If you press the slider on its left side, the LED will change color to RED.  If you press it in the middle, the LED will change to GREEN.  On the right will cause it to go to BLUE.  This change will occur the next time a command is sent to the LED to turn on (not immediate).  
Note that the reference below for slider support will not work 
directly with our IDE.
2)    If not using the slider, the color of the LED should be changed after every three on and off 
cycles.
3)    The program will run through the provided timing pattern ten complete cycles, and will then 
end.


Make fb_debug:  This version of the program will also run natively on the Freedom board
1)    It must perform all the functions as for the fb_run version
2)    It will be able to send messages via UART to a serial terminal (you can use the built in 
MCUXpresso terminal).  These messages should include the current command LED GREEN ON or 
LED BLUE OFF, for example, along with a timestamp and the elapsed time since the last 
command.  Individual output debug lines will look like this:
LED GREEN ON  14:22:17  973
2A) (Optional – 5 extra credit points)  In order to do the above, you will need to initialize the 
Real Time Clock on the KL25Z board, as there is no other timing source.  If you do so you can 
generate time stamps for the embedded version of the program as shown above.
2B) If you do not want to run the Real Time Clock, you may change the KL25Z board debug 
lines to read as follows:
LED GREEN ON 72000 
Where the number in the debug line is the value provided to your wait loop for that particular 
LED state.
3)    You may use the serial output for other messages such as program start and end.
4)    Some form of IFDEF in the code will likely manage whether these messages are sent or not.


Make pc_run:  This version of the program will run locally on your PC in MCUXpresso, sending results to 
the debug console.  
1)    This version of the code should generally run the same as the fb_run version.
2)    In the PC version of the program, instead of toggling the LED on and off, you must send the text 
LED GREEN ON or LED BLUE OFF as an alternative to triggering the LED on the Freedom board.    
This should be done in the same code modules that run on the Freedom board, perhaps using 
IFDEF clauses for alternate behavior.  NOTE – the timing of these cycles should still match the 
timing of LED activations on the board, so you may need to change to alternate timing loops for 
local PC execution.
3)    Also, in the PC version of the code, there is no equivalent to the slider, so that functionality 
should be disabled, and the color of the LED should be changed after every three on and off 
cycles in a set of alternate code.



Make pc_debug:  
1)    This version of the code should generally run as the pc_run version.
2)    This version of the program will add sending debug print lines to the debug console as above, 
but you must include time stamps and time since last event in milliseconds on the print line, 
which will look like this:   
LED GREEN ON  14:22:17  973
3)    You may use the debug console for other messages such as program start and end.


The timing Cycle is
3000,1000,2000,600,1000,400,1000,200,500,100,500,100,500,100,1000,200,1000,400,2000,600




Makefile Notes
WE MAKE AN EMPTY PROJECT AND ADD ALL THE NECESSARY BOARD FILES FROM A NEW COMPLETELY CREATED PROJECT. THEN WE ADD THE VARIABLES, ESSENTIALLY THE FLAGS WE WILL BE  USING TO GENERATE AN ECECUTABLE VERSION OF THE C SOURCE. THEN WE DEFINE BUILD TARGETS FOR PC, IN ITS RUN AND DEBUG MODE, AND FOR ARM RUN AND DEBUG MODE. WE WRITE THE DIFFERENT VARIABLES FOR COMPILATION OF C SOURCE FILE IN ARM EXECUTABLE FILE AND PC EXECUTABLE VERSION
 
##MAKE FILE PROCEDURE 

#WE MAKE AN EMPTY PROJECT AND ADD ALL THE NECESSARY BOARD FILES FROM A NEW COMPLETELY CREATED PROJECT. THEN WE ADD THE VARIABLES, ESSENTIALLY THE FLAGS WE WILL BE  USING TO GENERATE AN ECECUTABLE VERSION OF THE C SOURCE. THEN WE DEFINE BUILD TARGETS FOR PC, IN ITS RUN AND DEBUG MODE, AND FOR ARM RUN AND DEBUG MODE. WE WRITE THE DIFFERENT VARIABLES FOR COMPILATION OF C SOURCE FILE IN ARM EXECUTABLE FILE AND PC EXECUTABLE VERSION
