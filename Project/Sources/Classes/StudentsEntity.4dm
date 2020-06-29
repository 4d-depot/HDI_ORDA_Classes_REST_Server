Class extends Entity


Function studyingInSameCity
	
	C_OBJECT:C1216($0;$city)
	
	$city:=This:C1470.school.city
	$0:=$city.schools.students.minus(This:C1470)
	
	
Function schoolInfo
	C_OBJECT:C1216($0)
	$0:=New object:C1471("name";This:C1470.school.name;"city";This:C1470.school.city.name;"minAcceptedEnglishLevel";This:C1470.school.minAcceptedEnglishLevel)