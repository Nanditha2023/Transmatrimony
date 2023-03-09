<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>SELECT PLAN</title>
	
	<style>
	@import url(https://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic);

* {
margin: 0;
padding: 0;
box-sizing: border-box;
-moz-box-sizing: border-box;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
margin: 0;
padding: 0;
border: 0;
outline: 0;
font-size: 100%;
font: inherit;
vertical-align: top;
box-sizing: border-box;
-moz-box-sizing: border-box;
}

body {
font-family: "Source Sans Pro", "helvetica", sans-serif;
font-style: normal;
font-weight: normal;
text-align: center;
font-size: 16px;
color: rgba(39,65,90,1);
}

h4 {
margin-bottom: 12px;
font-size: 1.25em;
font-weight: 400;
text-transform: uppercase;
}

h5 {
font-size: 1.75em;
}

p {
margin-top: 1em;
margin-bottom: 1em;
color: rgba(39,65,90,.9);
font-size: 1.25em;
line-height: 1.625em;
}


ol, ul {
list-style: none;
}

body {
line-height: 1;
}

strong {
color: rgba(39,65,90,1);
font-weight: 600;
}

.plans {
background-image: url(images/bgLovsse.jpg);
}

.layer {
clear: both;
width: 100%;
height: auto;
padding: 60px 7.5% 60px;
display: block;
}

.layer > section, .layer > article {
clear: both;
width: 100%;
height: auto;
max-width: 1092px;
margin: 0 auto;
display: block;
}

.third {
width: 27.95%;
margin: 0 30px 0 0;
display: inline-block;
}

.plan-tier {
background: white;
vertical-align: baseline;
border-radius: 3px;
-moz-border-radius: 3px;
cursor: pointer;
overflow: hidden;
}

.lift {
position: relative;
-webkit-transition: all .075s ease-out;
-moz-transition: all .075s ease-out;
-o-transition: all .075s ease-out;
transition: all .075s ease-out;
}

.lift:hover {
top: -3px;
-webkit-box-shadow: 0 2px 6px rgba(39,65,90,.15);
-moz-box-shadow: 0 2px 6px rgba(39,65,90,.15);
box-shadow: 0 2px 6px rgba(39,65,90,.15);
}

.plan-tier h4 {
padding: 18px 0 15px;
margin: 0 0 30px;
background: #00a1ff;
color: white;
}

.plan-tier {
cursor: pointer;
}

.plan-tier sup {
position: relative;
right: -9px;
}

.plan-tier ul {
margin: 30px 0 0;
border-top: 2px solid #e7f2f0;
}

.plan-tier ul li {
font-size: 1.25em;
padding: 18px 0;
color: rgba(39,65,90,.9);
border-bottom: 2px solid #e7f2f0;
}

sup {
vertical-align: top;
}

.plan-tier .plan-price {
font-size: 5em;
font-weight: 300;
letter-spacing: -3px;
}

.plan-tier sub {
vertical-align: bottom;
position: relative;
bottom: .875em;
}

.plan-tier .early-adopter-price {
color: #0091e5;
}
p:first-of-type {
margin-top: 0;
}

small, del {
color: rgba(39,65,90,.5);
font-size: 1em;
line-height: 1.5em;
}

s, strike, del {
text-decoration: line-through;
}


.layer {
padding-top: 96px;
padding-bottom: 96px;
}

.plan-tier.callout h6 {
width: 100%;
padding: 15px 0 14px;
background: #8dcf3f;
color: rgba(39,65,90,.5);
font-size: 1.25em;
}

.plan-tier.callout h4 {
background-color: #78b336;
}
	</style>
</head>

<body background="images/bgLove.jpg">
	
	<section class="layer plans">
  <section>

    
    <section class="third lift plan-tier" onclick="location.href='silverPlan.php';">

      
      <h4>SILVER</h4>
      <h5><sup class="superscript">₹</sup><span class="plan-price">100</span><sub>/mo</sub></h5>

      
      <p class="early-adopter-price">Plan price</p><br>
      
      

      <ul>
<li><strong>1 month</strong> Access</li>
<!--
<li><strong>1</strong> user</li>
<li><strong>Free hosting</strong> (beta)</li>
<li>14 day <strong>free trial</strong></li>
-->
</ul>

    </section>
    
    <section class="third lift plan-tier callout" onclick="location.href='goldPlan.php';">

      <h6>Most popular</h6>
      <h4>GOLD</h4>
      <h5><sup class="superscript">₹</sup><span class="plan-price">500</span><sub>/6mo</sub></h5>

      
      <p class="early-adopter-price">Plan price</p><br>
      
      

      <ul>
<li><strong>6 month</strong> Access</li>
<!--
<li>Up to <strong>10</strong> users per site</li>
<li><strong>Free hosting</strong> (beta)</li>
<li>14 day <strong>free trial</strong></li>
-->
</ul>


    </section>
    
    <section class="third lift plan-tier" onclick="location.href='platinumPlan.php';">

      
      <h4>PLATINUM</h4>
      <h5><sup class="superscript">₹</sup><span class="plan-price">800</span><sub>/1yr</sub></h5>

      
      <p class="early-adopter-price">Plan price</p><br>
      
      

      <ul>
<li><strong>1 year</strong> Access</li>
<!--
<li><strong>Unlimited</strong> users</li>
<li><strong>Free hosting</strong> (beta)</li>
<li>14 day <strong>free trial</strong></li>
-->
</ul>

    </section>
    
    <div style="clear: both"></div>
  </section>
</section>
	
</body>
</html>