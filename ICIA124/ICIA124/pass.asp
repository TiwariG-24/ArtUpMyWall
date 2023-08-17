<!--#include file="acn.asp"-->
<%
Fname = Request.form("Fname")
Lname = Request.form("Lname")
Email = Request.form("Email")
Username = Request.form("Username")
Password = Request.form("password")
Number = Request.form("Number")
Address = Request.form("Address")
getsub = Request.Form("Submit")
Session("rd")
If getsub="Register"  then
	set sqlUID= Server.CreateObject("ADODB.Command")
	sqlUID.ActiveConnection=objConn
	sqlUID.Prepared = true
	sqlUID.commandtext="select Email, Username from Users where Username=? or Email=?"
	sqlUID.Parameters.Append sqlUID.CreateParameter("@Username", adVarChar, adParamInput, 25, Username)
	sqlUID.Parameters.Append sqlUID.CreateParameter("@Email", adVarChar, adParamInput, 50, Email)
	set rsUID = sqlUID.Execute
	If not rsUID.eof then
	chEmail = rsUID("Email")
	chUN = rsUID("Username")
	rsUID.Close
	set rsUID = nothing
	End If
	If Fname="" then 
	response.Write "Please enter First name"
	ElseIf Lname="" then
	response.Write "Please enter Last name"
	ElseIf Email="" then
	response.Write "Please enter Email"
	ElseIf Email=chEmail then
	Session("rd") = "Email Already exists"
	Response.Redirect "register.asp"
	ElseIf Username="" then
	response.Write "Please enter username"
	ElseIf Username=chUN then
	Session("rd")= "Username Already exists"
	Response.Redirect "register.asp"
	ElseIf password="" then
	response.Write "Please enter Password"
	Else
	Set sqlIns= Server.CreateObject("ADODB.Command") 
	sqlIns.ActiveConnection=objConn
	sqlIns.commandtext="insert into Users ([Fname],[Lname],[Email],[Username],[Password],[Address],[Number])values(?,?,?,?,?,?,?)"
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Fname", adVarChar, adParamInput, 25, Fname)
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Lname", adVarChar, adParamInput, 25, Lname)
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Email", adVarChar, adParamInput, 25,Email)
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Username", adVarChar, adParamInput, 25, Username)
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Password", adVarChar, adParamInput, 50, Password)
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Address", adVarChar, adParamInput, 100,Address)
	sqlIns.Parameters.Append sqlUID.CreateParameter("@Number", adVarChar, adParamInput, 100, Number)
	sqlIns.Execute
	Response.Write "Registeration successfull, now log in to continue"
	End If
End If
objConn.Close
set objConn = Nothing
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
				  url=login.asp">
	</head>
	<body>
		<h1 style="text-align:center;color:green;">
			Institute of Contemporary Indian Art
		  </h1>
		  <h4 style="text-align:center;">Registeration Complete, you will now be redirected to Login Page.</h4>
	</body>
</html>
