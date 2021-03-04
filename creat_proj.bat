@echo off

set PROJ_NAME=HS7A35

echo create new folder
set/a time_h=%time:~0,2%+100
set/a time_m=%time:~3,2%+100
set folder=%PROJ_NAME%_%date:~0,4%%date:~5,2%%date:~8,2%_%time_h:~1,2%%time_m:~1,2%

md ..\"%folder%"

echo copy project file
xcopy /y .\DESIGN.tcl\create_proj.tcl   ..\%folder%

cd ..\"%folder%"
vivado -mode tcl -source create_proj.tcl