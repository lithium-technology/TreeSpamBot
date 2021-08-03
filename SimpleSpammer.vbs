set shell = creatobject ("wscript.shell")

msgbox ""A little info - I mention right away that bot works best on discord when the intervals are 380-420 per sec. Additionally I will mention that if you want to stop the process go into task manager and close VBS Script microsoft process"
spamtext = inputbox ("hello what text do you want to start flooding with?")
spamtimes = inputbox ("How many times do I have to repeat this message?")
spamgap = inputbox ("how to send messages fast")
spamneed = inputbox ("Okey, so how much time do you need to enter the dialog?")
If not isnumeric (spamneed & spamtimes & spamgap) then
msgbox "Bad data. Turn on the application again and try again."
wscript.quit
End If
spamneed2 = spamneed * 1000
do
msgbox "You have " & spamneed & " seconds to enter the dialog box"
wsript.sleep spamneed2
shell.sendkeys ("Process activated" & "{enter}")
for i=0 to spamtimes
shell.sendkeys (spamtext & "{enter}")
wscript.sleep spamgap
Next
shell.sendkeys ("SimpleSpammer dezactivated" & "{enter}")
wscript.sleep spamgap * spamtimes / 10
returnvalu=MsgBox ("Repeat?",36)
Msgboxn "okay"
End If
If returnvalue=7 Then
msgbox "Bye"
wscript.quit
End IF
loop
