'
' VBScript Source File -- Created with Notepad. 
' NAME: CopiaArchivoSAPVaricent.vbs
'
' AUTHOR: Eduardo Rafalowski.
' DATE  : 01/11/2012.
'
' Logica: Se va a generar en el servidor varicent el archivo sapvaricent.txt, lo que hace este VBS es: este archivo hay que copiarlo nuevamente 
'         en el mismo directorio renombrado de la siguiente manera:  sapvaricentDDMMYYYYHHMM.txt   
'
'
'===================================================================================================================================================
Option Explicit
On Error Resume Next 

' Las siguientes constantes serán ocupadas en la función FncSendmail para enviar correos
' Const strMailServer      = "gruma1073.gruma.com"

Const strMailServer = "grumasmtp.grumamex.com"
Const strMailAddressFrom = "cen-sys@gruma.com"
Const strMailBCC = "erafalowski@gruma.com"
'Const strMailSupportTo = "cen-sys@gruma.com"
Const strMailADDressTo = "cen-sys@gruma.com, SAP_BASIS@gruma.com"

'Const strMailADDressTo = "erafalowski@gruma.com"

Dim MyMonth, MyDay, MyYear, MyHour, MyMinute, SufijoFile, File1, File2, WshShell, objFSO1, Now1, strLog

Set WshShell = WScript.CreateObject("WScript.Shell")
Set objFSO1  = CreateObject("Scripting.FileSystemObject")

MyMonth  = Right("0" & Month(Date),2) 
MyDay    = Right("0" & Day(Date),2) 'La función right se asegura de agregar un 0 (cero) cuando 1 =< día o mes <= 9. 
MyYear   = Year(Date) 
MyHour   = Right("0" & Hour(Time),2)
MyMinute = Right("0" & Minute(Time),2)

SufijoFile = MyYear & MyMonth & MyDay & MyHour & MyMinute

File1 = "\\grumash.grumacntrl.com\VARICENP\SAPVaricent\sapvaricent.txt"
File2 = "\\grumash.grumacntrl.com\VARICENP\SAPVaricent\sapvaricent" & SufijoFile & ".txt"

If objFSO1.FileExists(File1) Then
   objFSO1.CopyFile File1, File2, True
End If

If NOT objFSO1.FileExists(File1) or NOT objFSO1.FileExists(File2) Then
   Now1 = Now
   strLog = "*** No se encontró el archivo sapvaricent.txt o no se pudo copiar - Favor REVISAR carpeta E:\VARICENP\SAPVaricent en servidor gruma1438.grumacntrl.com" & " - Date-Time: " & Now1 & " ***"
   FncSendmail strMailAddressFrom,strMailADDressTo,"Job ZHRVARICEN_MXP - Archivos sapvaricent.txt procesados", strLog
End If

Wscript.Quit


'Envia correo de acuerdo al resultado del proceso.
'==================================================================================
Function FncSendmail(strMailAddressFrom,strMailAddressTo,strSubject,strMessageBody)
    WScript.TimeOut = 60
    Dim objEmail
    On Error Resume Next
    Set objEmail = CreateObject("CDO.Message")
	strSubject = "SAPVaricent: " & strSubject
	objEmail.From = strMailAddressFrom
	objEmail.To =   strMailADDressTo
	objEmail.BCC = strMailBCC
	objEmail.Subject = strSubject
	objEmail.Textbody = strMessageBody
	objEmail.Configuration.Fields.Item _
	    ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
	objEmail.Configuration.Fields.Item _
	    ("http://schemas.microsoft.com/cdo/configuration/smtpserver") = _
	        strMailServer
	objEmail.Configuration.Fields.Item _
	    ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
	objEmail.Configuration.Fields.Update
	objEmail.Send
	Set objEmail = Nothing
End Function