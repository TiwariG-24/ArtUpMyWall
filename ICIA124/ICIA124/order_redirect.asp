<!--#include file="mpauth.asp"-->
<html lang="en">
<head>
<title>ICIA</title>
<meta charset="utf-8" />

<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/portfolio_one.css" rel="stylesheet" type="text/css" />
<link href="css/colour.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<style>
table.tub th,table.tub td{
  border: 1px solid black;
  text-align: center;
}
.tub{
  width: 100%;
  border-collapse: collapse;
}

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
    #tab{
        background-color: rgb(255, 255, 255);
        color: rgb(180, 13, 13);
        padding: 10px;
        margin-right:10px;
        text-align: center;
      } 
    </style>
     <meta http-equiv="refresh"
     content="3; 
           url=index.asp">
</head>

<body>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-PZFSKH"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>    (function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({ 'gtm.start':
new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
'//www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-PZFSKH');</script>
<!-- End Google Tag Manager -->
<div id="box">

<div id="strip"></div>

<div id="box2">
<div id="maindiv"><div id="logo"></div>
</div>
</div>

<div id="containbox">
<div id="button">
<div id="bttn1"><a href="index.asp" >HOME</a></div>
<div id="bttn2"><a href="login.asp" style=" text-decoration:none;">LOGIN</a></div>
<div id="bttn2"><a href="gallery.asp">ARTISTS</a></div>
<div id="bttn2"><a href="contact_us.asp">CONTACT US</a></div>
    <div id="bttn2"><a href="about_us.asp">ABOUT US</a></div>
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
    <td width="733" height="100" valign="top" bgcolor="#FFFFFF"><div id="galeryhedder"><div class="bredcum">YOUR ORDER</div></div>
      
        <form name="checkoutform" action="order_store.asp" method="post">
          <br>
          <p><b>Name:   </b><%Response.Write(Session("sesFname"))%> &nbsp <%Response.Write(Session("sesLname"))%></p>
          <p><b>Email:  </b> <%Response.Write(Session("sesEmail"))%></p>
          <p><b>Number: </b> <%Response.Write(Session("sesNumber"))%></p>
          <p><b>Address: </b><%Response.Write(Session("sesAddress"))%></p>
          <table style="width: 100%" class="tub">
            <tr class="tub">
              <th>Painting Name</th>
              <th>Artist Name</th>
              <th>Product</th>
              <th>Cost</th>
            </tr>
            <tr class="tub">
                <td><%Response.Write(Session("Pname"))%> </td>
                <td> <%Response.Write(Session("Aname"))%></td>
                <td ><%Response.Write(disp())%></td>
                <td><%Response.Write(Session("Pcost"))%></td>
            </tr>
        </table>
          <br>
          <h3>Order Successfully Placed,You will now be redirected to HomePage</h3>  
        </form>
      </div></td>
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
 <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <!-- initialise sooperfish menu -->

  <script type="text/javascript" src="js/jquery.galleriffic.js"></script>
  <script type="text/javascript" src="js/jquery.opacityrollover.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      // we only want these styles applied when javascript is enabled
      $('div.navigation').css({'width' : '270px', 'float' : 'left'});
      $('div.content').css('display', 'block');
      // initially set opacity on thumbs and add additional styling for hover effect on thumbs
      var onMouseOutOpacity = 0.67;
      $('#thumbs ul.thumbs li').opacityrollover({
        mouseOutOpacity:   onMouseOutOpacity,
        mouseOverOpacity:  1.0,
        fadeSpeed:         'fast',
        exemptionSelector: '.selected'
      });
      // initialize advanced galleriffic gallery
      var gallery = $('#thumbs').galleriffic({
        delay:                     3500,
        numThumbs:                 9,
        preloadAhead:              9,
        enableTopPager:            false,
        enableBottomPager:         true,
        maxPagesToShow:            7,
        imageContainerSel:         '#slideshow',
        controlsContainerSel:      '#controls',
        captionContainerSel:       '#caption',
		
        loadingContainerSel:       '#loading',
        renderSSControls:          true,
        renderNavControls:         true,
        playLinkText:              'Play Slideshow',
        pauseLinkText:             'Pause Slideshow',
        prevLinkText:              '&lsaquo; Previous Photo',
        nextLinkText:              'Next Photo &rsaquo;',
        nextPageLinkText:          'Next',
        prevPageLinkText:          'Prev',
        enableHistory:             false,
        autoStart:                 false,
        syncTransitions:           true,
        defaultTransitionDuration: 900,
        onSlideChange:             function(prevIndex, nextIndex) {
          // 'this' refers to the gallery, which is an extension of $('#thumbs')
          this.find('ul.thumbs').children()
            .eq(prevIndex).fadeTo('fast', onMouseOutOpacity).end()
            .eq(nextIndex).fadeTo('fast', 1.0);
        }
      });
    });
  </script>
</body>

</html>
