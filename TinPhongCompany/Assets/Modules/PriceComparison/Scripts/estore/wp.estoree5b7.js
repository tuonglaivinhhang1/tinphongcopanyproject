function CloseShopCart(){$("#popupBackground").hide(),$("#popupOrder").hide()}function inforBoxCart(a){$.ajax({type:"POST",data:{method:"InforBox",args:{companyId:a}},url:"/Modules/PriceComparison/Handler/ShopCart.ashx",success:function(a){var b=$.parseJSON(a);switch(b.status){case"success":var c=$.parseJSON(b.data);null!=c.quantity&&($("#lblCart").length&&$("#lblCart").html(c.quantity),$("#lblCartMenu").length&&$("#lblCartMenu").html(c.quantity))}},error:function(a,b){}})}function AddCart(a,b){$.ajax({type:"POST",url:"/Modules/PriceComparison/WS/ShopCart.asmx/AddCart",data:"{companyId: '"+a+"',productId: '"+b+"'}",contentType:"application/json; charset=utf-8",dataType:"json",success:function(b){null!=b&&null!=b.d&&b.d.length>0&&(parseInt(b.d)>0?alert("Bạn đã thêm sản phẩm vào giỏ hàng !!! Vui lòng vào trang giỏ hàng để thanh toán."):window.location=b.d),inforBoxCart(a)},error:function(a,b,c){alert(a.status+": "+c)}})}var wpEs={Configs:{HANDLER_CALLBACK_URL:"/Modules/PriceComparison/Handler/EstoreHandler.ashx"},Cart:{addCart:function(){},closeCart:function(){}},AppEnv:{ScrollTop:{setting:{startline:100,scrollto:0,scrollduration:1e3,fadeduration:[500,100]},controlHTML:"Lên đầu trang",controlAttrs:{offsetx:5,offsety:5},anchorKeyword:"#top",state:{isvisible:!1,shouldvisible:!1},scrollUp:function(){this.cssfixedsupport||this.$control.css({opacity:0});var a=isNaN(this.setting.scrollto)?this.setting.scrollto:parseInt(this.setting.scrollto);a="string"==typeof a&&1==jQuery("#"+a).length?jQuery("#"+a).offset().top:0,this.$body.animate({scrollTop:a},this.setting.scrollduration)},keepFixed:function(){var a=jQuery(window),b=a.scrollLeft()+a.width()-this.$control.width()-this.controlAttrs.offsetx,c=a.scrollTop()+a.height()-this.$control.height()-this.controlAttrs.offsety;this.$control.css({left:b+"px",top:c+"px"})},toggleControl:function(){var a=jQuery(window).scrollTop();this.cssfixedsupport||this.keepFixed(),this.state.shouldvisible=a>=this.setting.startline,this.state.shouldvisible&&!this.state.isvisible?(this.$control.css({display:"block"}),this.$control.stop().animate({opacity:1},this.setting.fadeduration[0]),this.state.isvisible=!0):0==this.state.shouldvisible&&this.state.isvisible&&(this.$control.css({display:"none"}),this.$control.stop().animate({opacity:0},this.setting.fadeduration[1]),this.state.isvisible=!1)},init:function(){$(document).ready(function(a){var b=wpEs.AppEnv.ScrollTop,c=document.all;b.cssfixedsupport=!c||c&&"CSS1Compat"==document.compatMode&&window.XMLHttpRequest,b.$body=a(window.opera?"CSS1Compat"==document.compatMode?"html":"body":"html,body"),b.$control=a('<div id="goTop">'+b.controlHTML+"</div>").css({position:b.cssfixedsupport?"fixed":"absolute",bottom:b.controlAttrs.offsety,right:b.controlAttrs.offsetx,opacity:0,cursor:"pointer"}).attr({title:"Lên đầu trang"}).click(function(){return b.scrollUp(),!1}).appendTo("body"),document.all&&!window.XMLHttpRequest&&""!=b.$control.text()&&b.$control.css({width:b.$control.width()}),b.toggleControl(),a('a[href="'+b.anchorKeyword+'"]').click(function(){return b.scrollUp(),!1}),a(window).bind("scroll resize",function(){b.toggleControl()})})}},startClock:function(a){var b;if(b=document.getElementById(a)){var c=new Date,d=c.getHours(),e=c.getMinutes(),f=c.getSeconds(),g=c.getDay(),h=c.getMonth(),i=c.getDate(),j=c.getYear(),k=" ";switch(k=d>=12?" PM":" AM",d>=13&&(d-=12),0==d&&(d=12),10>f&&(f="0"+f),10>e&&(e="0"+e),g){case 0:g="Chủ nhật";break;case 1:g="Thứ hai";break;case 2:g="Thứ ba";break;case 3:g="Thứ tư";break;case 4:g="Thứ năm";break;case 5:g="Thứ sáu";break;case 6:g="Thứ bảy"}h+=1,99>=j&&(j="19"+j),j>99&&2e3>j&&(j+=1900),b.innerHTML=g+", ngày "+i+"/"+h+"/"+j+" "+d+": "+e+": "+f+k,setTimeout('wpEs.AppEnv.startClock("'+a+'")',1e3)}},init:function(){this.ScrollTop.init()}}};$(document).ready(function(){wpEs.AppEnv.init()});