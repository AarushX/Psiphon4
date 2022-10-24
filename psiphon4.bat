if exist psiphon4run.exe.orig (
	echo f | xcopy /y psiphon4run.exe.orig psiphon4run.exe
	del psiphon4run.exe.orig 
	goto runPsiphon
) 

if exist psiphon4.exe (
	echo f | xcopy /y psiphon4.exe psiphon4run.exe
	goto runPsiphon
)

if not exist psiphondownload.exe (
	curl "https://web.archive.org/web/20171115033405if_/https://psiphon.ca/psiphon3.exe" -o psiphondownload.exe
	echo f | xcopy /y psiphondownload.exe psiphon4run.exe
	goto runPsiphon	
)

:runPsiphon
start psiphon4run.exe
