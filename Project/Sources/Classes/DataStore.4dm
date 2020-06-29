Class extends DataStoreImplementation

Function getStatistics
	
	C_COLLECTION:C1488($0;$result)
	C_OBJECT:C1216($obj;$school)
	
	$result:=New collection:C1472()
	
	For each ($school;This:C1470.Schools.all())
		$obj:=New object:C1471()
		$obj.name:=$school.name
		$obj.city:=$school.city.name
		$obj.numberOfStudents:=$school.students.length
		$result.push($obj)
	End for each 
	
	$0:=$result
	
	