<!--#include file="acn.asp"-->
<%
Username = Request.form("Username")
Password = Request.form("password")
getsub = Request.Form("Submit")
Session("rdx")
If getsub="login"  then
Session("mess")=" "
	set sqlUID= Server.CreateObject("ADODB.Command")
	sqlUID.ActiveConnection=objConn
	sqlUID.Prepared = true
	sqlUID.commandtext="select Password from Users where Username=?"
	sqlUID.Parameters.Append sqlUID.CreateParameter("@Username", adVarChar, adParamInput, 25, Username)
	set rsUID = sqlUID.Execute
	If not rsUID.eof then
	 Chpass= rsUID("Password")
	rsUID.Close
	set rsUID = nothing
	End If
	If Chpass=Password then
	Session("rdx")= " "
	set sqlCID= Server.CreateObject("ADODB.Command")
	sqlCID.ActiveConnection=objConn
	sqlCID.Prepared = true
	sqlCID.commandtext="select Username,Email,Fname,Lname,Address,Number from Users where Username=?"
	sqlCID.Parameters.Append sqlCID.CreateParameter("@Username", adVarChar, adParamInput, 25, Username)
	sqlCID.Parameters.Append sqlCID.CreateParameter("@Email", adVarChar, adParamInput, 50, Email)
	sqlCID.Parameters.Append sqlCID.CreateParameter("@Fname", adVarChar, adParamInput, 25, Fname)
	sqlCID.Parameters.Append sqlCID.CreateParameter("@Lname", adVarChar, adParamInput, 50, Lname)
	sqlCID.Parameters.Append sqlCID.CreateParameter("@Address", adVarChar, adParamInput, 50, Address)
	sqlCID.Parameters.Append sqlCID.CreateParameter("@Number", adVarChar, adParamInput, 50, Number)
	set rsCID = sqlCID.Execute
	If not rsCID.eof then
	Session("sesEmail")= rsCID("Email")
	Session("sesUsername") = rsCID("Username")
	Session("sesLname") = rsCID("Lname")
	Session("sesFname") = rsCID("Fname")
	Session("sesAddress") = rsCID("Address")
	Session("sesNumber") = rsCID("Number")
	Session("LogCh")=1
	Session("orders")="Your Orders"
	rsCID.Close
	set rsCID = nothing
	End If	

	Else
	Session("rdx") = "wrong username or password"
	Response.Redirect "login.asp"

End If
End If
%>
<html>
	<head>
		<style>
			.button {
			  background-color: #308a24;
			  border: none;
			  color: white;
			  padding: 15px 32px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 16px;
			  margin: 4px 2px;
			  cursor: pointer;
			}
			</style>
			<meta http-equiv="refresh"
			content="3; 
				  url=index.asp">
	</head>
	<body>
		<h1 style="text-align:center;color:green;">
			Institute of Contemporary Indian Art
		  </h1>
		  <h4 style="text-align:center;">Login Successfull, you will now be redirected to Homw Page</h4>
		  
	</body>
</html>