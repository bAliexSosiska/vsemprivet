^6::
uldupd := 2
updatefile:="update.ini"
update:="https://github.com/bAliexSosiska/vsemprivet/raw/master/update.ini"
download:="https://github.com/bAliexSosiska/vsemprivet/raw/master/man.ahk"
filename:="man.ahk"
update()

filedelete()
{
FileDelete %a_temp%/%filename%
}

update()
{
global
IniRead, oldupd, %a_temp%/%updatefile% ,version,build
FileDelete %a_temp%/%updatefile%

URLDownloadToFile, %update%, %a_temp%/%updatefile%
IniRead, newupd, %a_temp%/%updatefile% ,version,build

{
    if (oldupd != newupd)
        {
	    filedelete()
	    URLDownloadToFile, %download%, %a_temp%/%filename%
	    MsgBox, 0x40020, , Обновлено !
	   }	
}
}

msgbox, ХУЙ ;; надо мне