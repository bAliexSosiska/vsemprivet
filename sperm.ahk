filename:= sperm.ahk
filedelete()
{
FileDelete %a_temp%/%filename%
}
url_script := "https://github.com/bAliexSosiska/vsemprivet/raw/master/man.ahk" 
url_version := "https://github.com/bAliexSosiska/vsemprivet/raw/master/update.ini" 
script_version := 1
last_version := (url_version)

if (script_version < last_version) 
{ 
	MsgBox, 64, Новая версия, Обнаружена новая версия программы!`nНажмитей "ОК" для перехода к скачиванию. 
	{
	    filedelete()
	    URLDownloadToFile, %url_script%, %a_temp%/%filename%
	    MsgBox, 0x40020, , Обновлено !
}
}

F2::reload ; ya togo rot ebal
