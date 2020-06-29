

sendHTTPRequest 

Case of 
	: (Form:C1466.origin="EntitySelection")
		CALL FORM:C1391(mainWindow;"redrawListBoxExam";Form:C1466.response)
		
	: (Form:C1466.origin="DataClass")
		If (Form:C1466.response.__DATACLASS#Null:C1517)
			CALL FORM:C1391(mainWindow;"redrawListBoxStudents";Form:C1466.response)
		End if 
		
End case 