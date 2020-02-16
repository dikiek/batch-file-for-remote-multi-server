@echo off
set username=root
set password=lalalala
set plink=E:\Project\scrirpt\batch\plink.exe
set command=E:\Project\scrirpt\batch\command.txt

::for /f "delims=" %%a in (list-server.txt) do ping -n 1 %%a >nul && (echo %%a ok) || (echo %%a failed to respond) 

::for /f "delims=" %%a in (list-server.txt) do ping -n 1 %%a

for /f "delims=" %%a in (list-server.txt) do %plink% %username%@%%a -pw %password% -m %command% > output.txt