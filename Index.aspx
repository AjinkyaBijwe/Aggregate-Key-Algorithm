<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"   CodeFile="Index.aspx.cs" MasterPageFile="~/MasterPage.master"  Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width:100%; height: 703px;">
    <tr>
        <td valign="top" align="center" bgcolor="White" class="style47">
       
            <img align="middle" alt="" 
                src="Images/res_cloud-computing-network-design-3f.jpg" 
                style="width: 641px; height: 750px" /></td>
 
    </tr>
    <tr>
        <td valign="top" class="style47">
       
            &nbsp;</td>
 
    </tr>
    </table>









</asp:Content>

<asp:Content ContentPlaceHolderID="head1" ID ="con1" runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />

<link href="jq/jq_slider.css" rel="stylesheet" type="text/css" />
<script src="http://code.jquery.com/jquery-1.8.2.js" type="text/javascript"></script>

<script type="text/javascript">
$(function () {
var currentPosition = 0;
var slideWidth = 683;
var slides = $('.slide');
//var numberOfSlides = slides.length;
var numberOfSlides =5;
setInterval(changePosition, 5000);
slides.wrapAll('<div id="slidesHolder"></div>');
slides.css({ 'float': 'left' });
$('#slidesHolder').css('width', slideWidth * numberOfSlides);
function changePosition() {
if (currentPosition == numberOfSlides - 1) {
currentPosition = 0;
}
else {
currentPosition++;
}
moveSlide();
}
function moveSlide() {
$('#slidesHolder').animate({ 'marginLeft': slideWidth * (-currentPosition) });
}
});
</script>


    <style type="text/css">
       
       #slideshow {
position: relative;
        top: 0px;
        left: 0px;
        width: 680px;
        height: 150px;
    }
#slideshow #slideshowWindow {
height: 150px;
margin: 0;
overflow: hidden;
padding: 0;
position: relative;
width: 680px;
}
#slideshow #slideshowWindow .slide {
height: 150px;
margin: 0;
padding: 0;
position: relative;
width: 680px;
        top: 0px;
        left: 0px;
    }
#slideshow #slideshowWindow .slide .slideText {
background-image: url("http://www.webchief.co.uk//blog/simple-jquery-slideshow/greyBg.png");
background-repeat: repeat;
color: #FFFFFF;
font-family: Myriad Pro,Arial,Helvetica,sans-serif;
height: 130px;
left: 0;
margin: 0;
padding: 0;
position: absolute;
top: 130px;
width: 680px;
}
#slideshow #slideshowWindow .slide .slideText a:link, #slideshow #slideshowWindow .slide .slideText a:visited {
color: #FFFFFF;
text-decoration: none;
}
#slideshow #slideshowWindow .slide .slideText h2, #slideshow #slideshowWindow .slide .slideText p {
color: #FFFFFF;
margin: 10px 0 0 10px;
padding: 0;
}
        .style38
        {
            width: 176px;
        }
        p.Default
	{margin-bottom:.0001pt;
	
	font-size:12.0pt;
	font-family:"Cambria","serif";
	color:black;
            margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
        .style46
        {
            height: 146px;
            width: 924px;
        }
        .style47
        {
            width: 924px;
        }
        </style>

</asp:Content>  