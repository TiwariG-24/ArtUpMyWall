<!doctype html>
<html lang="en">
<head>
<title>ICIA</title>
<meta charset="utf-8" />

<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/portfolio_one.css" rel="stylesheet" type="text/css" />
<link href="css/colour.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
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
    #tab{
        background-color: rgb(255, 255, 255);
        color: rgb(180, 13, 13);
        padding: 10px;
        margin-right:10px;
        text-align: center;
      } 
    </style>
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
<div id="bttn2"><a href="#" style="color:#a10f0f; text-decoration:none;">LOGIN</a></div>
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
    <td width="733" height="100" valign="top" bgcolor="#FFFFFF"><div id="galeryhedder"><div class="bredcum">LOG IN</div></div><!--<div>
      <img src="images/home-page_new3.jpg" width="733" height="394"></div>--><div class="contactus"><font style="font-size:16px; color:#a10f0f;"><br>
        <form name="RegForm" action="auth.asp" method="post">
          <%Response.Write(Session("mess"))%><br><br>
            Username &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" tabindex="1" name="Username" required><br><br><br>
            Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" tabindex="2" name="password" required><br><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="button" name="Submit" value="login" class="Fieldcol" tabindex="6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.asp" class="button">Register</a>
            <%Response.Write(Session("rdx"))%>
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
