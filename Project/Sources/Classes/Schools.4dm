
Class extends DataClass

Function registerStudent
	C_OBJECT:C1216($1;$data;$student;$school;$result;$0)
	$data:=$1
	$school:=This:C1470.query("name = :1";$data.schoolName).first()
	$result:=New object:C1471("success";True:C214)
	If ($data.englishLevel<$school.minAcceptedEnglishLevel)
		$result.success:=False:C215
		$result.statusText:="The English level is not high enough"
		$0:=$result
	End if 
	If ($result.success)
		$student:=ds:C1482.Students.new()
		$student.fromObject($data)
		$student.finalExam:="To take"
		$student.school:=$school
		$result:=$student.save()
		$0:=$student
	End if 