
C_BOOLEAN:C305(btnTrace)
C_LONGINT:C283($i)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		ARRAY TEXT:C222(_TabTitles;0)
		ARRAY TEXT:C222(_Descriptions;0)
		ARRAY TEXT:C222(_Descriptions2;0)
		ARRAY TEXT:C222(_TabLineCode;0)
		
		READ ONLY:C145([INFO:1])
		QUERY:C277([INFO:1];[INFO:1]PageNumber:4<=9)
		ORDER BY:C49([INFO:1];[INFO:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3;_TabTitles;[INFO:1]Description:2;_Descriptions)
		
		READ ONLY:C145([INFO:1])
		QUERY:C277([INFO:1];[INFO:1]PageNumber:4>=100)
		ORDER BY:C49([INFO:1];[INFO:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFO:1]Description:2;_Descriptions2)
		
		QUERY:C277([INFO:1];[INFO:1]PageNumber:4>=10)
		ORDER BY:C49([INFO:1];[INFO:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFO:1]Description:2;_TabLineCode)
		
		Form:C1466.lightBlue:=New object:C1471("fill";"#b3daff")
		Form:C1466.cellBold:=New object:C1471()
		Form:C1466.cellBold.examColumn:=New object:C1471("fontWeight";"bold")
		
		manageTexts
		
		RW
		
		viewTrace
		
	: (Form event code:C388=On Page Change:K2:54)
		
		//Page 2
		Form:C1466.statistics:=ds:C1482.getStatistics()
		
		//Page 3
		Form:C1466.data:=New object:C1471()
		
		ARRAY INTEGER:C220(_englishLevels;0)
		For ($i;1;6)
			APPEND TO ARRAY:C911(_englishLevels;$i)
		End for 
		Form:C1466.data.englishLevel:=1
		_englishLevels{0}:=1
		_englishLevels:=0
		
		handleRegisterButton
		
		ARRAY TEXT:C222(_schools;0)
		COLLECTION TO ARRAY:C1562(ds:C1482.Schools.all().name;_schools)
		_schools{0}:="Select a school"
		_schools:=0
		
		OBJECT SET VISIBLE:C603(*;"Result@";False:C215)
		
		Form:C1466.students:=ds:C1482.Students.all().orderByFormula("school.name")
		
		//Page 5
		ARRAY TEXT:C222(_exams;3)
		_exams{1}:="To take"
		_exams{2}:="Passed"
		_exams{3}:="Must retry"
		_exams{0}:="Select an exam result"
		_exams:=0
		
		OBJECT SET ENABLED:C1123(*;"ExamResultsList";False:C215)
		
		manageTexts
		
		viewTrace
		
End case 

