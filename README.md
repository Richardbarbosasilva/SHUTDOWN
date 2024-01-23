# SHUTDOWN
Automatically forces PC shutdown after 2h of inactivity (is meant to run inside a group policy to all domain PCs)

It works in this way:

- Batch file is executed by GPO at startup;
- Searchs and runs .ps1 file;
- The powershell script is responsable for searching python interpreter, plus running it, after running it it will search and run .py script using python executable;
- The python file will run the automation, it will check every passing second if the mouse has moved, if not, it will count for the equivalent of 2 hours (7200 seconds);
- If the mouse moves, it will reset the countdown;
- If the mouse didn't move for all 2 hours (also counts even if the monitor is turned off), then it will force PC shutdown;

This is a way of reducing costs to the enterprise, as many people hasn't the culture of turning off the pc before leaving, so many times the PC's aren't turned off, making a unecessary energy consumption.
