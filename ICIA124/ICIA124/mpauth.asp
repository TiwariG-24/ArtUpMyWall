<%
Session("Pname")
Session("Aname")
Session("Pcost")
getsub = Request.Form("BuyButt")

if Session("LogCh")=1 then
If getsub="Buy Now"  then
    Session("Pname") = "Beach Party"
    Session("Aname") = "Anjolie Ela Menon"
    Session("Pcost")=123250
    Function disp()
    disp=Response.Write("<IMG SRC=""../images/artist/Anjolie_Ela_Menon/thumb/t_01.jpg"" BORDER=0>")
    End Function
    getsubA= " "
    Response.Redirect "checkout.asp"
    End If
Else
Session("mess")="Please Log in first to buy"
Response.Redirect "login.asp"
End If
%>
