'
' VBScript Source File -- Created with Notepad. 
' NAME: RespaldoSicfMovTxtSegunDiaSemana.vbs
'
' AUTHOR: Eduardo Rafalowski.
' DATE  : 25/09/2012.
'
' Logica: Según el día en qu el job BI_TODASPTAS-CUBO-MENSUAL genera el archivo SICF_MOV.TXT guardarlo en calidad de respaldo en la carpeta:
'         \\TXP\sapdata\interfaces\fi\archive\Lunes\SICF_MOV.LUN
'         \\TXP\sapdata\interfaces\fi\archive\Lunes\SICF_MOV.MAr ==> etc.
'
'         En caso que el porgrama zcpD19.cmd no pueda efectuar alguna de las copias de archivo que realiza, notificar el error por medio de mail. 
'
'           
'===================================================================================================================================================
' Las siguientes constantes serán ocupadas en la función ReplyToPing

Option Explicit
On Error Resume Next 

WScript.TimeOut = 3600000 'Define tiempo de timeout (60 minutos) antes de abortar ejecución del script


' Las siguientes constantes serán ocupadas en la función FncSendmail para enviar correos
' Const strMailServer      = "gruma1073.gruma.com"

Const strMailServer = "grumasmtp.grumamex.com"
Const strMailAddressFrom = "cen-sys@gruma.com"
Const strMailBCC = "erafalowski@gruma.com"
'Const strMailSupportTo = "cen-sys@gruma.com"
Const strMailADDressTo = "cen-sys@gruma.com, SAP_BASIS@gruma.com"

'Const strMailADDressTo = "erafalowski@gruma.com"

Const ForAppending = 8 'Acción para guardar registro histórico en archivo SicfMovTxt_RespaldoLog.txt de los resultados de cada transferencia desde el Banorte 
Const ForReading   = 1 'Acción para buscar errores en el archivo LogConexionFTP.txt y actuar en consecuencia (enviar mail, abortar ejecución, etc.).

Dim RespaldoDomingo, RespaldoLunes, RespaldoMartes, RespaldoMiercoles, RespaldoJueves, RespaldoViernes, RespaldoSabado, ArchivoEnArchive, RespaldoDiariOK
Dim strFile, Verificafecha, LogFile, strLog, WshShell, objFSO1, myweekday, TextLineToAppend 

ArchivoEnArchive  = "\\TXP\sapdata\interfaces\fi\archive\SICF_MOV.txt"
RespaldoDomingo   = "\\TXP\sapdata\interfaces\fi\archive\Domingo\SICF_MOV.Dom"
RespaldoLunes     = "\\TXP\sapdata\interfaces\fi\archive\Lunes\SICF_MOV.Lun"
RespaldoMartes    = "\\TXP\sapdata\interfaces\fi\archive\Martes\SICF_MOV.Mar"
RespaldoMiercoles = "\\TXP\sapdata\interfaces\fi\archive\Miercoles\SICF_MOV.Mie"
RespaldoJueves    = "\\TXP\sapdata\interfaces\fi\archive\Jueves\SICF_MOV.Jue"
RespaldoViernes   = "\\TXP\sapdata\interfaces\fi\archive\Viernes\SICF_MOV.Vie"
RespaldoSabado    = "\\TXP\sapdata\interfaces\fi\archive\Sabado\SICF_MOV.Sab"
 
strLog = ""

LogFile = "E:\info\scripts\SicfMovTxt_RespaldoLog.txt" 'Log para registrar resultados (histórico) de la transferencia desde el Banorte 

Set WshShell = WScript.CreateObject("WScript.Shell") 
Set objFSO1 = CreateObject("Scripting.FileSystemObject")


'Si falló alguna de las copias que realiza el programa zcpD19.cmd ==> lo notifica por medio de mail
'==========================================================================================================
'Espera 20 segundos a que se complete la acción de mover el archivo SICF_MOV.txt a \\TXP\sapdata\interfaces\fi\archive

wscript.Sleep 20000

If Not objFSO1.FileExists(ArchivoEnArchive) Then
   strLog = "El archivo SICF_MOV.txt no fue copiado a \\TXP\sapdata\interfaces\fi\archive en el servidor de TXP - favor revisar." & VbCrLf
   FncSendmail strMailAddressFrom, strMailADDressTo, "Job BI_TODASPTAS-CUBO-MENSUAL - Archivo SICF_MOV.txt no fue copiado a archive en TXP", strLog
   wscript.quit 
End If


'Respalda el archivo a la carpeta y con el nombre que corresponde según el día de la semana
'===========================================================================================
myweekday = Weekday(now())

RespaldoDiariOK = "No"

if myweekday = 1 Then
   If objFSO1.FileExists(RespaldoDomingo) Then
      objFSO1.DeleteFile RespaldoDomingo, True
   End If
   wscript.Sleep 10000 
   objFSO1.CopyFile ArchivoEnArchive, RespaldoDomingo, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoDomingo) Then
      RespaldoDiariOK = "Si" 
   End If
End If

if myweekday = 2 Then
   If objFSO1.FileExists(RespaldoLunes) Then
      objFSO1.DeleteFile RespaldoLunes, True
   End If
   wscript.Sleep 10000
   objFSO1.CopyFile ArchivoEnArchive, RespaldoLunes, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoLunes) Then
      RespaldoDiariOK = "Si"
   End If 
End If

if myweekday = 3 Then
   If objFSO1.FileExists(RespaldoMartes) Then
      objFSO1.DeleteFile RespaldoMartes, True
   End If
   wscript.Sleep 10000
   objFSO1.CopyFile ArchivoEnArchive, RespaldoMartes, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoMartes) Then
      RespaldoDiariOK = "Si"
   End If 
End If

if myweekday = 4 Then
   If objFSO1.FileExists(RespaldoMiercoles) Then
      objFSO1.DeleteFile RespaldoMiercoles, True
   End If
   wscript.Sleep 10000 
   objFSO1.CopyFile ArchivoEnArchive, RespaldoMiercoles, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoMiercoles) Then
      RespaldoDiariOK = "Si" 
   End If 
End If

if myweekday = 5 Then
   If objFSO1.FileExists(RespaldoJueves) Then
      objFSO1.DeleteFile RespaldoJueves, True
   End If
   wscript.Sleep 10000
   objFSO1.CopyFile ArchivoEnArchive, RespaldoJueves, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoJueves) Then
      RespaldoDiariOK = "Si" 
   End If 
End If

if myweekday = 6 Then
   If objFSO1.FileExists(RespaldoViernes) Then
      objFSO1.DeleteFile RespaldoViernes, True
   End If
   wscript.Sleep 10000
   objFSO1.CopyFile ArchivoEnArchive, RespaldoViernes, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoViernes) Then
      RespaldoDiariOK = "Si" 
   End If 
End If

if myweekday = 7 Then
   If objFSO1.FileExists(RespaldoSabado) Then
      objFSO1.DeleteFile RespaldoSabado, True
   End If
   wscript.Sleep 10000
   objFSO1.CopyFile ArchivoEnArchive, RespaldoSabado, True
   wscript.Sleep 10000 
   If objFSO1.FileExists(RespaldoSabado) Then
      RespaldoDiariOK = "Si" 
   End If 
End If

If RespaldoDiariOK = "No" Then
   strLog = "Al parecer el archivo SICF_MOV.txt no pudo ser respaldado a la carpeta del día que corresponde bajo \\TXP\sapdata\interfaces\fi\archive en el servidor de TXP - favor revisar que el archivo exista." & VbCrLf
   FncSendmail strMailAddressFrom, strMailADDressTo, "Job BI_TODASPTAS-CUBO-MENSUAL - Al parecer el archivo SICF_MOV.txt no pudo ser respaldado a la carpeta del día que corresponde en TXP", strLog
   wscript.quit
End If

wscript.quit



'Envia correo de acuerdo al resultado del proceso.
'==================================================================================
Function FncSendmail(strMailAddressFrom,strMailAddressTo,strSubject,strMessageBody)
    WScript.TimeOut = 60
    Dim objEmail
    On Error Resume Next
    Set objEmail = CreateObject("CDO.Message")
	strSubject = "Procesos BI-Finanzas: " & strSubject
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