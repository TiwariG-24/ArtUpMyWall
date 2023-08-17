<%
Session("Pname")
Session("Aname")
Session("Pcost")
%>
<!doctype html>
<html lang="en">
<head>
<meta name="google-site-verification" content="Yf2UDrVVLFIu4fJc7jTzqSjclAuBf3TTUqeGY47HQu8" />
<title>ICIA</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/portfolio_one.css" rel="stylesheet" type="text/css" />
<link href="css/colour.css" rel="stylesheet" type="text/css" />
<meta charset="utf-8" />
<script src="js/html5shiv.js"></script>
<style>
  #tab{
    background-color: rgb(255, 255, 255);
    color: rgb(180, 13, 13);
    padding: 10px;
    margin-right:10px;
    text-align: center;
  } 
  </style>
 <script src="js/jquery.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
  <script>
    $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        maxwidth: 800,
        speed: 800
      });

      // Slideshow 2
      $("#slider2").responsiveSlides({
        auto: false,
        pager: true,
        speed: 300,
        maxwidth: 540
      });

      // Slideshow 3
      $("#slider3").responsiveSlides({
        auto: false,
        pager: false,
        nav: true,
        speed: 500,
        namespace: "callbacks",
        before: function () {
          $('.events').append("<li>before event fired.</li>");
        },
        after: function () {
          $('.events').append("<li>after event fired.</li>");
        }
      });

    });
  </script>
</head>

<body>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-KJWVJP"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({ 'gtm.start':
new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-KJWVJP');</script>
<!-- End Google Tag Manager -->
<div id="box">

<div id="strip"></div>

<div id="box2">
<div id="maindiv"><div id="logo"></div>
</div>
</div>

  <table align="right" id="tab">
    <tr>
      <td><%Response.Write(Session("sesUsername"))%></td>
    </tr></table>
 
<div id="containbox">
<div id="button">
<div id="bttn1"><a href="#" style="color:#a10f0f; text-decoration:none;">HOME</a></div>
<div id="bttn2"><a href="about_us.asp">ABOUT US</a></div>
<div id="bttn2"><a href="gallery.asp">ARTISTS</a></div>
 
<div id="bttn2"><a href="contact_us.asp">CONTACT US</a></div>
<div id="bttn2"><a href="login.asp">LOGIN</a></div>
<div id="bttn2"><a href="orders.asp"><%Response.Write(Session("orders"))%></a></div>
</div>

<div id="maincontainbox">
<table width="785" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="26" height="20" class="cornor-left" ></td>
    <td width="733" height="20" class="top-border" ></td>
    <td width="26"  height="20" class="cornor-right" ></td>
  </tr>
  <tr>
    <td width="26" height="100" valign="top" class="left-border"></td>
    <td width="733" height="100" valign="top" bgcolor="#FFFFFF"> <div id="wrapper">


    <!-- Slideshow 1 -->
    <ul class="rslides" id="slider1">
      <li><img src="images/home-page_new.jpg" alt="" /></li>
      <li><img src="images/home-page_new1.jpg" alt="" /></li>
      <li><img src="images/home-page_new2.jpg" alt="" /></li>
       <li><img src="images/home-page_new3.jpg" alt="" /></li>
    </ul>

    <!-- Slideshow 2 -->


    <!-- Slideshow 2 -->
    

    <!-- This is here just to demonstrate the callbacks -->
   </div>

    </td>
    <td width="26" height="100" class="right-border"></td>
  </tr>
  <tr>
    <td><img src="images/c-bottom-left.png" width="26" height="20"></td>
    <td width="733" class="bottom-border"></td>
    <td width="26"><img src="images/c-bottom-right.png" width="26" height="20"></td>
  </tr>
</table>

</div>

</div>
</div>
 
</body>
</html>
