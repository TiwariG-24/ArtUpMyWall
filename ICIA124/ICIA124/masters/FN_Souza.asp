<!doctype html>
<html lang="en">
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
		#tab{
		  background-color: rgb(255, 255, 255);
		  color: rgb(180, 13, 13);
		  padding: 10px;
		  margin-right:10px;
		  text-align: center;
		} 
		</style>
<title>ICIA</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="../css/accordation.css" type="text/css" />
<link href="../css/main.css" rel="stylesheet" type="text/css">
	<link href="../css/demo1.css?v=0.9" type="text/css" rel="stylesheet" />
	<script src="../js/jquery-1.5.1.min.js" type="text/javascript"></script>
		<script src="../js/jquery.exposure.js?v=0.9" type="text/javascript"></script>
<script type="text/javascript">
			$(function(){
				$('#images').exposure({controlsTarget : '#controls',
					controls : { prevNext : true, pageNumbers : true, firstLast : false },
					visiblePages : 2,
					slideshowControlsTarget : '#slideshow',
					onThumb : function(thumb) {
						var li = thumb.parents('li');				
						var fadeTo = li.hasClass('active') ? 1 : 0.3;
						
						thumb.css({display : 'none', opacity : fadeTo}).stop().fadeIn(200);
						
						thumb.hover(function() { 
							thumb.fadeTo('fast',1); 
						}, function() { 
							li.not('.active').children('img').fadeTo('fast', 0.3); 
						});
					},
					onImage : function(image, imageData, thumb) {
						// Check if wrapper is hovered.
						var hovered = $('.exposureWrapper').hasClass('exposureHover');
						
						// Fade out the previous image.
						$('.exposureWrapper > .exposureLastImage').stop().fadeOut(500, function() {
							$(this).remove();
						});
						
						// Fade in the current image.
						image.hide().stop().fadeIn(1000);
						
						var hasCaption = function() {
							var caption = imageData.find('.caption').html();
							var extra = imageData.find('.extra').html();
							return (caption && caption.length > 0) || (extra && extra.length > 0);
						}
						
						var showImageData = function() {
							imageData.stop().show().animate({bottom:0+'px'},{queue:false,duration:160});
						}
						var hoverOver = function() {
							$('.exposureWrapper').addClass('exposureHover');
							// Show image data as an overlay when image is hovered.
							var hasCpt = hasCaption();
							
							if (hasCpt) {
								showImageData.call();
							}
						};
						
						var hideImageData = function() {
							var imageDataBottom = -imageData.outerHeight();
							imageData.stop().show().animate({bottom:imageDataBottom+'px'},{queue:false,duration:160});
						}
						var hoverOut = function() { 
							$('.exposureWrapper').removeClass('exposureHover');
							// Hide image data on hover exit.
							if (hasCaption()) {
								
							}
						};
						
						$('.exposureWrapper').hover(hoverOver,hoverOut);
						imageData.hover(hoverOver,hoverOut);
												
						if (hovered) {
							if (hasCaption()) {
								showImageData.call();
							} else {
								hideImageData.call();	
							}	
						}
		
						if ($.exposure.showThumbs && thumb && thumb.length) {
							thumb.parents('li').siblings().children('img.selected').stop().fadeTo(200, 0.5, function() { $(this).removeClass('selected'); });			
							thumb.fadeTo('fast', 1).addClass('selected');
							showImageData.call();
						}
					},
					onPageChanged : function() {
						$('.exposureThumbs li.current').hide().stop().fadeIn('fast', function() {
							var imageHeight = $(this).find('img').height();
							if (imageHeight > 0) {
								$(this).height(imageHeight);
							}
						});
					}
				});
			});
		</script>
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
<table align="right" id="tab">
	<tr>
	  <td><%Response.Write(Session("sesUsername"))%></td>
	</tr></table>
<div id="containbox">
<div id="button">
<div id="bttn1"><a href="../index.asp">HOME</a></div>
<div id="bttn2"><a href="../about_us.asp">ABOUT US</a></div>
<div id="bttn2"><a href="../gallery.asp" style="color:#a10f0f; text-decoration:none;">ARTISTS</a></div>

<div style="width:215px;">
<ul class="acci" id="acci">
	<li>
	  <h3>MASTERS</h3>
	  <div class="acci-section">
			<div class="acci-content">
            
				<ul class="acci" id="nestedi">
					

                  <li> <div id="artistmenubtn"><a href="../masters/Anjolie_Ela_Menon.asp" style="text-decoration:none; color:#999999;">Anjolie Ela Menon</a></div>                   
                      <div id="artistmenubtn"><a href="../masters/FN_Souza.asp" style="text-decoration:none; color:#A10F0F;">FN Souza</a></div>
                       
                       <div id="artistmenubtn"><a href="../masters/SH_Raza.asp" style="text-decoration:none; color:#999999;">SH Raza</a></div>
                        <div id="artistmenubtn"><a href="../masters/Tyeb_Mehta.asp" style="text-decoration:none; color:#999999;">Tyeb Mehta</a></div>
                    
						</li>
				</ul>
				
			</div>
		</div>
	</li>	
</ul>


</div>


<div id="bttn2"><a href="../contact_us.asp">CONTACT US</a></div>
    <div id="bttn2"><a href="contact_us.asp">LOGIN</a></div>
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
    <td width="733" height="100" valign="top" bgcolor="#FFFFFF"><div id="galeryhedder">
      <div class="bredcum">GALLERY  > <a href="#" class="bredcumlink">FN SOUZA</a></div>
  </div>
 
     <div id="galleryboxdiv">
     <div class="panel">
				<ul id="images">
					<li><a href="../images/artist/FN_Souza/large/t_01.jpg"><img src="../images/artist/FN_Souza/thumb/t_01.jpg" title="<b>Title : </b>Head<br><b>Medium : </b> Oil on Board<br><b>Size : </b>30 x 24 in.<br><b>Year : </b> 1964<br>" /></a></li>
					<li><a href="../images/artist/FN_Souza/large/t_02.jpg"><img src="../images/artist/FN_Souza/thumb/t_02.jpg" title="<b>Title : </b>Untitled<br><b>Medium : </b> Acrylic on Paper<br><b>Size : </b>22 x 14 in.<br><b>Year : </b> 1951" /></a></li>
               
					
				</ul>
				
				<div class="clear"></div>
			</div>
			<div id="exposure"></div>	
			<div>
				<form action="../authFN.asp" method="post">
				<input type="submit" class="button" name="BuyFN" value="Buy Now"></form></div>		
			<div class="clear"></div></div> 

      


</td>
    <td width="26" height="100" class="right-border"></td>
  </tr>
  <tr>
    <td><img src="../images/c-bottom-left.png" width="26" height="20"></td>
    <td width="733" class="bottom-border"></td>
    <td width="26"><img src="../images/c-bottom-right.png" width="26" height="20"></td>
  </tr>
</table>

</div>
 
</div>
</div>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript">
var parentAccordion=new TINY.accordion.slider("parentAccordion");
parentAccordion.init("acci","h3",1,0);
var nestedAccordion=new TINY.accordion.slider("nestedAccordion");
nestedAccordion.init("nestedi","h3",1,-1,"acci-selected");
</script>
</body>
</html>
