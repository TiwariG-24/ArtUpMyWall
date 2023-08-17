<!doctype html>
<html lang="en">
<head>
<title>ICIA</title>
<meta charset="utf-8" />

<link href="css/main.css" rel="stylesheet" type="text/css">
	<link href="css/demo1.css?v=0.9" type="text/css" rel="stylesheet" />
	<script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
		<script src="js/jquery.exposure.js?v=0.9" type="text/javascript"></script>
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

<div id="containbox">
<div id="button">
<div id="bttn1"><a href="index.asp">HOME</a></div>
<div id="bttn2"><a href="about_us.asp">ABOUT US</a></div>
<div id="bttn2"><a href="gallery.asp"  style="color:#a10f0f; text-decoration:none;">ARTISTS</a></div>
<div id="bttn2"><a href="contact_us.asp">CONTACT US</a></div>
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
      <div class="bredcum">GALLERY ><a href="#" class="bredcumlink"> A. SHAHABUDDIN</a></div>
  </div>
 
     <div id="galleryboxdiv">
     <div class="panel">
				<ul id="images">
					<li><a href="images/artist/A._Shahabuddin/large/t_01.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_01.jpg" title="<b>Title:</b> Festival<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 118 x 79.in<br><b>Year:</b> 2007<br>" /></a></li>
					<li><a href="images/artist/A._Shahabuddin/large/t_02.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_02.jpg" title="<b>Title:</b> Bangla Bandu<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 48 x 60.in<br><b>Year:</b> 2006" /></a></li>
                    <li><a href="images/artist/A._Shahabuddin/large/t_03.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_03.jpg" title="<b>Title:</b> Rabindranath<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 63 x 51.in<br><b>Year:</b> 2003<br>" /></a></li>
			        <li><a href="images/artist/A._Shahabuddin/large/t_04.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_04.jpg" title="<b>Title:</b> Power<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 79 x 63.in<br><b>Year:</b> 2006" /></a></li>
					<li><a href="images/artist/A._Shahabuddin/large/t_05.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_05.jpg" title="<b>Title:</b>The Bull<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 78 x 66.in<br><b>Year:</b> 2006<br>" /></a></li>			
					<li><a href="images/artist/A._Shahabuddin/large/t_06.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_06.jpg" title="<b>Title:</b>Chitro<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 51 x 63.in<br><b>Year:</b> 2007<br>" /></a></li>
					<li><a href="images/artist/A._Shahabuddin/large/t_07.jpg"><img src="images/artist/A._Shahabuddin/thumb/t_07.jpg" title="<b>Title:</b>Speed<br><b>Medium:</b> Oil on Canvas<br><b>Size:</b> 72 x 48.in<br><b>Year:</b> 2006<br>" /></a></li>
					
				</ul>
				
				<div class="clear"></div><div id="controls"></div>
			</div>
			<div id="exposure"></div>			
			<div class="clear"></div></div> 

        <div id="aboutArtist"><strong>INTRODUCTION</strong><br><br>
Born in Dhaka, Bangladesh, Shahabuddin completed his graduation in Fine Arts from Bangladesh College of Arts & Crafts, University of Dhaka. He later went to France on a scholarship to study fine arts. In 1971 he participated in the war for liberation of Bangladesh.<br> 
This celebrated artist from Bangladesh is considered among the masters of contemporary art in world today. <br>
<br>
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
