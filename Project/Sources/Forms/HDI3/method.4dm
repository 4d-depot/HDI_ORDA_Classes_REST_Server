

If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Case of 
			: (Form:C1466.origin="DataClass")
				OBJECT SET ENTERABLE:C238(*;"Request";False:C215)
				OBJECT SET ENTERABLE:C238(*;"Body";True:C214)
				
			: (Form:C1466.origin="Entity")
				OBJECT SET ENTERABLE:C238(*;"Request";True:C214)
				OBJECT SET ENTERABLE:C238(*;"Body";False:C215)
				
			: (Form:C1466.origin="EntitySelection")
				OBJECT SET ENTERABLE:C238(*;"Request";True:C214)
				OBJECT SET ENTERABLE:C238(*;"Body";True:C214)
				
			: (Form:C1466.origin="DataStore")
				OBJECT SET ENTERABLE:C238(*;"Request";False:C215)
				OBJECT SET ENTERABLE:C238(*;"Body";False:C215)
		End case 
		
End case 