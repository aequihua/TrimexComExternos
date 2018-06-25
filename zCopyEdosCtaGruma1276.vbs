' zCopyEdosCta.vbs
' Proceso que copia el archivo MHCASH.TXT de delta01 a directorio local en cimxp
' para posteriormente procesar los estados de cuenta correspondientes de BBVA - Bancomer.
' 
'
' Fecha de creación: 18 de abril de 2008.
' RFC: 6710
' Autor: Cándido Cáceres.
' Modificado el 18 de abril por Cándido Cáceres de acuerdo a work order 31968.

On Error Resume Next

strTrgGimsa        = "W:\interfaces\BBVA\EdosDeCta\Gimsa\MHCASH.TXT"
strTrgGruma        = "W:\interfaces\BBVA\EdosDeCta\Gruma\MHCASH.TXT"

strSrcGimsa        = "\\delta01.gruma.com\Plantas\A_NUEVO\entrada\GIMSA\"
strSrcGruma        = "\\delta01.gruma.com\Plantas\A_NUEVO\entrada\GRUMA\"

StrTecnoGrumacntrl = "\\cimtp.grumacntrl.com\sapdata\interfaces\BBVA\EdosDeCta\Tecno"

strFile="MHCASH.TXT"
strFecha=cstr(Now)

if day(Now) < 10 Then
     strDia="0" & day(now)
else
     strDia = day(now)
End if
if month(now) < 10 then
     strMes="0" & month(now)
else
     strMes=month(now)
End if

strFecha           = strDia & strMes & year(now)
strSrcGimsa        = strSrcGimsa & strFecha & "\" & strFile
strSrcGruma        = strSrcGruma & strFecha & "\" & strFile
StrTecnoGrumacntrl = StrTecnoGrumacntrl & "\" & strFile


set objFSO = CreateObject("Scripting.FileSystemObject")


  if objFSO.FileExists(strTrgGruma) then
     objFSO.CopyFile strTrgGruma,StrTecnoGrumacntrl, true
  End If

set objFile=Nothing
