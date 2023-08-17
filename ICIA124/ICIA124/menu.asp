<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="css/accordation.css" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
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
   <div>
    <ul class="acci" id="acci">
	<li>
	  <h3>The Organisation</h3>
	  <div class="acci-section">
			<div class="acci-content">
            
				<ul class="acci" id="nestedi">
					

                  <li>    asdf 
                 
                
						</li>
				</ul>
				
			</div>
		</div>
	</li>	
    <li>
	  <h3>The Organisation</h3>
	  <div class="acci-section">
			<div class="acci-content">
            
				<ul class="acci" id="nestedi">
					

                  <li>    asdf 
                 
                
						</li>
				</ul>
				
			</div>
		</div>
	</li>
</ul>
    
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js
"></script>
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
</body>
</html>
