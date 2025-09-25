Set objShell = CreateObject("WScript.Shell")
startTime = Timer ' Get the current time in seconds
duration = 15 ' Duration in seconds

Do While Timer - startTime < duration
    objShell.SendKeys(chr(&hAF))
    WScript.Sleep 10 ' Sleep for 100 milliseconds before sending the next keystroke
Loop
