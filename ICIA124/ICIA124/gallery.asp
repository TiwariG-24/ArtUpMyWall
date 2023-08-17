<!doctype html>
<html lang="en">
<head>
<title>ICIA</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="css/accordation.css" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css">
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/Cantarell.font.js" type="text/javascript"></script>

    <style type="text/css">
        .auto-style1 {
            background-image: url('images/top-strip.png');
            background-repeat: repeat-x;
            width: 648px;
        }
        .auto-style2 {
            width: 648px;
        }
        .auto-style3 {
            background-image: url('images/bottom-strip.png');
            background-repeat: repeat-x;
            width: 648px;
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
<table align="right" id="tab">
    <tr>
      <td><%Response.Write(Session("sesUsername"))%></td>
    </tr></table>
<div id="containbox">
<div id="button">
<div id="bttn1"><a href="index.asp">HOME</a></div>
<div id="bttn2"><a href="about_us.asp">ABOUT US</a></div>
<div id="bttn2"><a href="#" style="color:#a10f0f; text-decoration:none;">ARTISTS</a></div>

<div style="width:215px;">
<ul class="acci" id="acci">
	<li>
	  <h3>MASTERS</h3>
	  <div class="acci-section">
			<div class="acci-content">
            
				<ul class="acci" id="nestedi">
					

                  <li> <div id="artistmenubtn"><a href="masters/Anjolie_Ela_Menon.asp" style="text-decoration:none; color:#999999;">Anjolie Ela Menon</a></div> 
                      <div id="artistmenubtn"><a href="masters/FN_Souza.asp" style="text-decoration:none; color:#999999;">FN Souza</a></div>
                  <div id="artistmenubtn"><a href="masters/SH_Raza.asp" style="text-decoration:none; color:#999999;">SH Raza</a></div>
                   <div id="artistmenubtn"><a href="masters/Tyeb_Mehta.asp" style="text-decoration:none; color:#999999;">Tyeb Mehta</a></div>
                    
						</li>
				</ul>
				
			</div>
		</div>
	</li>	
    
	


</div>


<div id="bttn2"><a href="contact_us.asp">CONTACT US</a></div>
    <div id="bttn2"><a href="login.asp">LOGIN</a></div>
</div>

<div id="maincontainbox">
<table width="785" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="26" height="20" class="cornor-left" ></td>
    <td height="20" class="auto-style1" ></td>
    <td width="26"  height="20" class="cornor-right" ></td>
  </tr>
  <tr>
    <td width="26" height="100" valign="top" class="left-border"></td>
    <td height="100" valign="top" bgcolor="#FFFFFF" class="auto-style2"><div id="galeryhedder"><div class="bredcum">ARTISTS</div></div>
    <div  id="hs_container"class="gallery-images">
    <div id="contempary1" class="confont"><strong>MASTERS</strong></div>
    <div id="leftfloat">
    <div id="gallery-images-box"> <a href="masters/Anjolie_Ela_Menon.asp"><div id="gallery-thumb" class="hs_area hs_area1">
    <img class="hs_visible" src="images/all_artist/Anjolie-Ela-Menon.jpg" width="175" height="135"  border="none">
    <img  src="images/all_artist/Anjolie-Ela-Menon1.jpg" width="175" height="135"  border="none">
    </div></a></div><div id="gallery-txt">Anjolie Ela Menon</div>
    </div>
    
    <div id="leftfloat1">
    <div id="gallery-images-box"><a href="masters/FN_Souza.asp"> <div id="gallery-thumb" class="hs_area hs_area1">
    <img class="hs_visible" src="images/all_artist/Souza.jpg" width="175" height="135"  border="none">
    <img  src="images/all_artist/Souza1.jpg" width="175" height="135"  border="none">
    </div></a></div><div id="gallery-txt">FN Souza</div>
    </div>
    
      <div id="leftfloat3">
    <div id="gallery-images-box"><a href="masters/SH_Raza.asp"> <div id="gallery-thumb" class="hs_area hs_area1">
    <img class="hs_visible" src="images/all_artist/SH_Raza.jpg" width="175" height="135"  border="none">
    <img  src="images/all_artist/SH_Raza1.jpg" width="175" height="135 "  border="none">
    </div></a></div><div id="gallery-txt">SH Raza</div>
    </div>
    
            <div id="leftfloat3">
    <div id="gallery-images-box"><a href="masters/Tyeb_Mehta.asp"> <div id="gallery-thumb" class="hs_area hs_area1">
    <img class="hs_visible" src="images/all_artist/Tyeb-Mehta.jpg" width="175" height="135"  border="none">
    <img  src="images/all_artist/Tyeb-Mehta1.jpg" width="175" height="135"  border="none">
    </div></a></div><div id="gallery-txt">Tyeb Mehta</div>
    </div>
    
    
    </div>

<!--<div id="righthandmenu">

<div id="gallerymenuhead">MASTERS</div>
<div id="imenus0"><a href="masters/SH_Raza.html" style="text-decoration:none; color:#999999;">SH Raza</a></div>
<div id="imenus0"><a href="masters/Anjolie_Ela_Menon.html" style="text-decoration:none; color:#999999;">Anjolie Ela Menon</a></div>

<div id="imenus0"><a href="masters/Tyeb_Mehta.html" style="text-decoration:none; color:#999999;">Tyeb Mehta</a></div>
<div id="imenus0"><a href="masters/FN_Souza.html" style="text-decoration:none; color:#999999;">FN Souza</a></div>

</div>-->

</td>
    <td width="26" height="100" class="right-border"></td>
  </tr>
  <tr>
    <td><img src="images/c-bottom-left.png" width="26" height="20"></td>
    <td class="auto-style3"></td>
    <td width="26"><img src="images/c-bottom-right.png" width="26" height="20"></td>
  </tr>
</table>

</div>

</div>
</div>
<script type="text/javascript">

$(function() {
    var $mainNav = $('#main-nav'),
    navWidth = $mainNav.width();
    
    $mainNav.children('.main-nav-item').hover(function(ev) {
        var $this = $(this),
        $dd = $this.find('.main-nav-dd');
        
        // get the left position of this tab
        var leftPos = $this.find('.main-nav-tab').position().left;
        
        // get the width of the dropdown
        var ddWidth = $dd.width(),
        leftMax = navWidth - ddWidth;
        
        // position the dropdown
        $dd.css('left', Math.min(leftPos, leftMax) );
        
        // show the dropdown
        $this.addClass('main-nav-item-active');
    }, function(ev) {

        // hide the dropdown
        $(this).removeClass('main-nav-item-active');
    });
});

</script>

<script type="text/javascript" src="js/script.js"></script>



<script type="text/javascript">
var parentAccordion=new TINY.accordion.slider("parentAccordion");
parentAccordion.init("acci","h3",0,2);
var nestedAccordion=new TINY.accordion.slider("nestedAccordion");
nestedAccordion.init("nestedi","h3",1,-1,"acci-selected");
</script>
 <script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
				//custom animations to use
				//in the transitions
				var animations		= ['right','left','top','bottom','rightFade','leftFade','topFade','bottomFade'];
				var total_anim		= animations.length;
				//just change this to one of your choice
				var easeType		= 'swing';
				//the speed of each transition
				var animSpeed		= 450;
				//caching
				var $hs_container	= $('#hs_container');
				var $hs_areas		= $hs_container.find('.hs_area');
				
				//first preload all images
                $hs_images          = $hs_container.find('img');
                var total_images    = $hs_images.length;
                var cnt             = 0;
                $hs_images.each(function(){
                    var $this = $(this);
                    $('<img/>').load(function(){
                        ++cnt;
                        if(cnt == total_images){
							$hs_areas.each(function(){
								var $area 		= $(this);
								//when the mouse enters the area we animate the current
								//image (random animation from array animations),
								//so that the next one gets visible.
								//"over" is a flag indicating if we can animate 
								//an area or not (we don't want 2 animations 
								//at the same time for each area)
								$area.data('over',true).bind('mouseenter',function(){
									if($area.data('over')){
										$area.data('over',false);
										//how many images in this area?
										var total		= $area.children().length;
										//visible image
										var $current 	= $area.find('img:visible');
										//index of visible image
										var idx_current = $current.index();
										//the next image that's going to be displayed.
										//either the next one, or the first one if the current is the last
										var $next		= (idx_current == total-1) ? $area.children(':first') : $current.next();
										//show next one (not yet visible)
										$next.show();
										//get a random animation
										var anim		= animations[Math.floor(Math.random()*total_anim)];
										switch(anim){
											//current slides out from the right
											case 'right':
												$current.animate({
													'left':$current.width()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the left
											case 'left':
												$current.animate({
													'left':-$current.width()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the top	
											case 'top':
												$current.animate({
													'top':-$current.height()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the bottom	
											case 'bottom':
												$current.animate({
													'top':$current.height()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the right	and fades out
											case 'rightFade':
												$current.animate({
													'left':$current.width()+'px',
													'opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the left and fades out	
											case 'leftFade':
												$current.animate({
													'left':-$current.width()+'px','opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the top and fades out	
											case 'topFade':
												$current.animate({
													'top':-$current.height()+'px',
													'opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
											//current slides out from the bottom and fades out	
											case 'bottomFade':
												$current.animate({
													'top':$current.height()+'px',
													'opacity':'0'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'top'		: '0px',
														'opacity'	: '1'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;		
											default:
												$current.animate({
													'left':-$current.width()+'px'
												},
												animSpeed,
												easeType,
												function(){
													$current.hide().css({
														'z-index'	: '1',
														'left'		: '0px'
													});
													$next.css('z-index','9999');
													$area.data('over',true);
												});
												break;
										}	
									}
								});
							});
							
							//when clicking the hs_container all areas get slided
							//(just for fun...you would probably want to enter the site
							//or something similar)
							$hs_container.bind('click',function(){
								$hs_areas.trigger('mouseenter');
							});
						}
					}).attr('src',$this.attr('src'));
				});			
				

            });
        </script>
</body>
</html>
