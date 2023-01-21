^6::

updatefile:="update.ini"
update:="https://raw.githubusercontent.com/bAliexSosiska/vsemprivet/master/update.ini"
download:="ссылка на файл который обновляем"
filename:="имя файла который обновляем"
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