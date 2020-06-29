
If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		
		_exams{0}:="Select an exam result"
		_exams:=0
		OBJECT SET ENABLED:C1123(*;"ExamResultsList";Form:C1466.selectedStudents.length#0)
End case 