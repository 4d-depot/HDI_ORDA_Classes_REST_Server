

If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		OBJECT SET ENABLED:C1123(*;"SameCityButton";Form:C1466.selectedStudent#Null:C1517)
End case 