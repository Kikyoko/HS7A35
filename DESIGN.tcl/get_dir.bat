rem /a:d 只显示文件夹
rem /a:a 只显示文件
DIR /s /b /a:d *.* > LIST.TXT
DIR /s /b /a:a *.* >> LIST.TXT