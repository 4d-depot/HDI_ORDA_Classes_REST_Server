


C_LONGINT:C283($win)
C_OBJECT:C1216($data)

If (btnTrace)
	TRACE:C157
End if 

$data:=New object:C1471()
$data.request:="http://127.0.0.1:8044/rest/Students/setFinalExam/?$filter=\"school.name='Math school'\""
$data.body:=New collection:C1472("Passed")
$data.origin:="EntitySelection"
$data.title:=_Descriptions2{3}
$data.sessionCookie:=Form:C1466.sessionCookie

$win:=Open form window:C675("HDI3";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
DIALOG:C40("HDI3";$data;*)
CLOSE WINDOW:C154

Form:C1466.sessionCookie:=$data.sessionCookie
