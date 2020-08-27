' Weekday Conditional Script for Running Apps at Login
'   Intended to be loaded through the Windows 10 Task Scheduler
'   Consider this an example - add paths/executables yourself!

' Create shell object
Set Shell = CreateObject("WScript.Shell")

' Run on weekdays
If DatePart("w", Date, vbMonday) < 6 Then
    Call Shell.Run("""%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe""", 4, False)
    Call Shell.Run("""%PROGRAMFILES%\Docker\Docker\Docker Desktop.exe""", 0, False)
    Call Shell.Run("""%PROGRAMFILES%\Microsoft Office\root\Office16\OUTLOOK.EXE""", 0, False)
    Call Shell.Run("%LOCALAPPDATA%\Microsoft\Teams\Update.exe --processStart Teams.exe", 0, False)
End If

' Run on weekends
' If DatePart("w", Date, vbMonday) > 5 Then
    ' Call Shell.Run("""%LOCALAPPDATA%\Programs\Microsoft VS Code\Code.exe""", 4, False)
' End If

' Run unconditionally
WScript.Quit(Shell.Run("""%PROGRAMFILES(X86)%\Google\Chrome\Application\chrome.exe""", 4, False))
