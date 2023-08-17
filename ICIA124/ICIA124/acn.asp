<!--#include file="ADOVBS.inc"-->
<%
Set objConn = Server.createObject("ADODB.Connection")
objConn.Provider="Microsoft.Jet.OLEDB.4.0" 
objConn.Open "registerdata.mdb"
%>