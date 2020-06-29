//%attributes = {"invisible":true}


If (btnTrace)
	TRACE:C157
End if 

C_OBJECT:C1216($1;$response;$selection)

$response:=$1

$selection:=ds:C1482.Students.fromCollection(New collection:C1472($response))
Form:C1466.students:=ds:C1482.Students.all()

Form:C1466.result:=$selection.first()
CALL FORM:C1391(Current form window:C827;"selectRowStudent")