<%
getsubS = Request.Form("BuySH")
if Session("LogCh")=1 then
If getsubS="Buy Now" then
Session("Pname") = "Jala Bindu"
Session("Aname") = "SH Raza"
Session("Pcost")=297890
Function disp()
    If getsubA="Buy Now"  then
    disp=Response.Write("<IMG SRC=""../images/artist/Anjolie_Ela_Menon/thumb/t_01.jpg"" BORDER=0>")
    ElseIf getsubT="Buy Now" then
    disp=Response.Write("<IMG SRC=""../images/artist/Tyeb_Mehta/thumb/t_01.jpg"" BORDER=0>")
    ElseIf getsubSH="Buy Now" then
    disp=Response.Write("<IMG SRC=""../images/artist/SH_Raza/thumb/t_02.jpg"" BORDER=0>")
    ElseIf getsubFN="Buy Now" then
    disp=Response.Write("<IMG SRC=""../images/artist/FN_Souza/thumb/t_01.jpg"" BORDER=0>")
    End If
    End Function
getsubS= " "
Response.Redirect "checkout.asp"
End If
Else
Session("mess")="Please Log in first to buy"
Response.Redirect "login.asp"
End If
%>