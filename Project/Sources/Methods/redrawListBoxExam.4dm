//%attributes = {"invisible":true}


If (btnTrace)
	TRACE:C157
End if 

C_OBJECT:C1216($1;$response;$selection)

$response:=$1

$selection:=ds:C1482.Students.fromCollection($response.__ENTITIES)

LISTBOX SELECT ROWS:C1715(*;"ListBoxExam";$selection;lk replace selection:K53:1)

Form:C1466.students:=Form:C1466.students