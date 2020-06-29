//%attributes = {"invisible":true}

If (btnTrace)
	TRACE:C157
End if 


OBJECT SET SCROLL POSITION:C906(*;"ListBoxStudents1";Form:C1466.result.indexOf(Form:C1466.students)+1)
LISTBOX SELECT ROWS:C1715(*;"ListBoxStudents1";ds:C1482.Students.newSelection().add(Form:C1466.result);lk replace selection:K53:1)