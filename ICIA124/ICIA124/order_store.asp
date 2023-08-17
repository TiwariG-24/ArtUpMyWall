<!--#include file="acn.asp"-->
<%
Pname= Session("Pname")
Pcost= Session("Pcost")
Email = Session("sesEmail")
Address = Session("sesAddress")
getsub = Request.Form("Submit")
If getsub="Place Order"  then
set sqlInsPro= Server.CreateObject("ADODB.Command")
	sqlInsPro.ActiveConnection=objConn
	sqlInsPro.commandtext="insert into Profile ([Pname],[Address],[Number],[Fname],[Email],[Lname],[Pcost])values(?,?,?,?,?,?,?)"
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Pname", adVarChar, adParamInput, 100, Pname)
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Addressr", adVarChar, adParamInput, 100, Address)
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Number", adVarChar, adParamInput, 25, Session("sesNumber"))
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Fname", adVarChar, adParamInput, 25, Session("sesFname"))
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Email", adVarChar, adParamInput, 25, Email)
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Lname", adVarChar, adParamInput, 25, Session("sesLname"))
	sqlInsPro.Parameters.Append sqlInsPro.CreateParameter("@Pcost", adVarChar, adParamInput, 25, Pcost)
	sqlInsPro.Execute
	Response.Redirect "Order_redirect.asp"
End If
%>