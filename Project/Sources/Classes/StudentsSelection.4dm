Class extends EntitySelection


Function setFinalExam
	
	C_TEXT:C284($1;$value)
	C_OBJECT:C1216($student;$status;$0)
	
	$value:=$1
	
	For each ($student;This:C1470)
		$student.finalExam:=$value
		$status:=$student.save()
	End for each 
	
	$0:=This:C1470
	