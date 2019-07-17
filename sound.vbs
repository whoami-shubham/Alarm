'I have modified the code and used that is borrowed from here https://stackoverflow.com/questions/36524002/how-do-i-play-music-on-loop-in-batch

Set Sound = CreateObject("WMPlayer.OCX.7")
Sound.URL = ".\danger-alarm.mp3"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
