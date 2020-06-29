
If (btnTrace)
	TRACE:C157
End if 

Form:C1466.result:=ds:C1482.Schools.registerStudent(Form:C1466.data)

If (OB Class:C1730(Form:C1466.result).name="StudentsEntity")
	OBJECT SET VISIBLE:C603(*;"Result@";False:C215)
	Form:C1466.students:=ds:C1482.Students.all()
	CALL FORM:C1391(Current form window:C827;"selectRowStudent")
Else 
	OBJECT SET VISIBLE:C603(*;"Result@";True:C214)
End if 

manageTexts 