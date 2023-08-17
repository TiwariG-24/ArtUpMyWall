<%
getsubF = Request.Form("BuyFN")
if Session("LogCh")=1 then
If getsubF="Buy Now" then
Session("Pname") = "Head"
Session("Aname") = "FN Souza"
Session("Pcost")=363580
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
getsubFN= " "
Response.Redirect "checkout.asp"
Else
Session("mess")="Please Log in first to buy"
Response.Redirect "login.asp"
End If
%>