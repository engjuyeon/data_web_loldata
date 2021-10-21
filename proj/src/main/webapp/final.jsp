<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>
<head>
<style>
 html{overflow: hidden;}
 html,body {
        width: 100%;
        height: 100%;
        position: relative;
        font-family: 'Gothic A1', sans-serif;
      }
      .content{
       width: 100%;
        height: 100%;
        position : relative;
      }
      .content > h1{
      position: absolute;
	  top: 50%; left: 50%;
	  transform: translate(-50%,-50%);
 
	  font-size: 20em;
	  font-weight: bold;
	  text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.5);
 
	  }
      .container::after {
 		 width: 100%;
 		 height: 100%;
 		 content: "";
 		 background-image: url('./img/background1.jpg');background-size: cover; background-repeat: no-repeat;
 		 position: absolute;
 		 top : 0;
 		 left : 0;
 		 z-index:-1;
 		 opacity: 0.75;
		}
		 .containerbottom::after {
 		 width: 100%;
 		 height: 100%;
 		 content: "";
 		 background-image: url('./img/background1.jpg');background-size: cover; background-repeat: no-repeat;
 		 position: absolute;
 		 top : 0;
 		 left : 0;
 		 z-index:-1;
 		 opacity: 0.2;
		}
	nav ul li {
	  display: inline-block;
	}
 
	nav ul li a {
	  padding: 18px; 
	  text-transform:uppercase;
	  color: rgba(0, 0, 0, 1);
	  font-size: 18px;
	  text-decoration: none;
	  display: block;
	  color: white;
	  font-weight: 550;
	}
 
		nav ul li a:hover {
 		  box-shadow: 0 0 5px rgba(0, 0, 0, 0.3), inset 0 0 1px rgba(255, 255, 255, 0.3);
 		  color: rgba(0, 0, 0, 1);
 		  font-weight: 550;
		}
		.bigPictureWrapper {
			position: absolute;
			display: none;
			justify-content: center;
			align-items: center;
			top:0%;
			width:100%;
			height:100%;
			background-color: gray; 
			z-index: 100;
			background:rgba(255,255,255,0.8);
			cursor: pointer;
		}
		.bigPicture {
			position: relative;
			display:flex;
			justify-content: center;
			align-items: center;
			cursor: pointer;
		}
		
		.bigPicture img {
			width:600px;
			cursor: pointer;
		}
	
		input[type="checkbox"]{ position:absolute; width:1px; height:1px; padding:0; margin:-1px; overflow:hidden; clip:rect(0,0,0,0); border:0; } 
		input[type="checkbox"] + label{ display:inline-block; position:relative; padding-left:26px; cursor:pointer; } 
		input[type="checkbox"] + label:before{ content:''; position:absolute; left:0; width:18px; height:18px; text-align:center; background: url('./img/checkbox2.6_0.5x.png') no-repeat 0 0px / contain;
    		cursor: pointer; 
														border:0px solid #ccc; box-sizing:border-box; }
		input[type="checkbox"]:checked + label:after{ content: ''; position:absolute; top:-0.5px; left:0; width:18px; height:18px; background: url('./img/checkbox2.4_0.5x.png') no-repeat 0 1px / contain; }
		
</style>
<meta charset="UTF-8">
<title>4조 데이터 분석</title>
</head>
<body>
<nav class="navbar navbar-expand-sm fixed-top"">  
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-toggle="tooltip" data-placement="right" title="4조의 프로젝트 홈페이지" href="final.jsp">league of legends</a>
    </li>
  </ul>
</nav>
<div class = "content" style="color: white; text-shadow: -3px 0 black, 0 3px black, 3px 0 black, 0 -3px black; display:table; position : relative; z-index: 1;">
	<div class="container" style="display:table-cell; vertical-align:middle;" >
  		<h1 style="font-size:60px; text-align:center;">리그 오브 레전드 상황에 따른 <br> 승률 변화를 알기 위한 데이터 분석 및 모델 생성과 예측</h1>
  		<p style="font-size:30px; text-align:center;">저희 4조는 LOL의 게임 중 승리를 하기 위하여 상황에 따른 승패 예측이 가능한 모델을 생성해보았습니다.</p>
  		<img src="./img/scrolling-mousewheel-unscreen.gif" style = "display:block; margin-left:auto; margin-right:auto; margin-top:200px; margin-bottom:-210px; width:200; height:150px;"/>
    </div>
</div>
<div class = "content" style="display:table; position : relative;">
	<div class="containerbottom" style="display:table-cell; vertical-align:middle;" >
  		<h1 style="font-size:80px; text-align:center; color: black; text-shadow: -3px 0 white, 0 3px white, 3px 0 white, 0 -3px white;">Model Graph</h1>
  		<p style="font-size:20px; text-align:center; color: black; text-shadow: -1px 0 white, 0 1px white, 1px 0 white, 0 -1px white;">데이터 분석으로 도출해낸 그래프입니다. 사진을 클릭하면 확대해서 볼 수 있습니다.</p>
  		<div class='bigPictureWrapper'>
		<div class='bigPicture'>
			</div>
		</div>
  		<div class="row col-15" style="display:table;  position : relative; padding-left:350px;">
 			<div class="card col-3" style="display:table-cell; vertical-align:middle;  width:400px; padding-right:10px; ">
    			<img id="graph" class="card-img-top" src="./img/model1.jpg" alt="상관관계" style="cursor: pointer;">
    			<div class="card-body">
      				<h5 class="card-title">상관관계 그래프</h5>
     				<p class="card-text">사용한 데이터셋에 있는 각 상황과 승리에 대한 상관관계를 표현한 그래프</p>
    			</div>
  			</div>
  			<div class="col-1"></div>
  			<div class="card col-3" style= " display:table-cell; vertical-align:bottom; width:400px;" >
    			<img id="graph" class="card-img-top" src="./img/model2.jpg" alt="모델추정" style="cursor: pointer;">
    			<div class="card-body">
      				<h5 class="card-title">모델추정</h5>
      				<p class="card-text">사용할 파라미터를 설정함에 있어 모델을 선택하기 위해 분석한 그래프</p>
    			</div>
  			</div>
  			<div class="col-1"></div>
  			<div class="card col-3" style="display:table-cell; vertical-align:middle; width:400px;">
    			<img id="graph" class="card-img-top" src="./img/model3.jpg" alt="가중치" style="cursor: pointer;">
    			<div class="card-body">
      				<h5 class="card-title">가중치 그래프</h5>
      				<p class="card-text">추정된 모델을 기반으로 각 상황마다 가중치를 구한 그래프</p>
    			</div>
  			</div>
		</div>
		<img src="./img/scrolling-mousewheel-unscreen.gif" style = "display:block; margin-left:auto; margin-right:auto; margin-top:50px; width:200; height:150px;"/>
	</div>
</div>
<div class = "content" style="display:table; position : relative; z-index: 1;">
	<div class="containerbottom" style="display:table-cell; vertical-align:middle;" >
  		<h1 style="font-size:80px; text-align:center; color: black; text-shadow: -3px 0 white, 0 3px white, 3px 0 white, 0 -3px white;">게임 안에서 발생한 상황</h1>
  		<p style="font-size:20px; text-align:center; color: black; text-shadow: -1px 0 white, 0 1px white, 1px 0 white, 0 -1px white;">현재 게임 중 본인 진영에서 성공한 상황을 체크해주세요.</p>
  		<p style="font-size:20px; text-align:center; color: black; text-shadow: -1px 0 white, 0 1px white, 1px 0 white, 0 -1px white;">현재 게임 상황을 비교하여 비슷한 게임의 결과를 보여드립니다.</p>
  		
		<form method="get" action="LOLProcess" style = "text-align:center;">
			<input type="checkbox" name="blood" id="blood">
			<label for = "blood" class="checkbox-inline" style="color: black"
				onclick="checkbox_Check()"> <span>first blood</span></label> 
			<input type="checkbox" name="tower" id="tower"><label for = "tower"  class="checkbox-inline" style="color: #black"
				onclick="checkbox_Check()"> <span>first tower</span>
			</label> 
<input type="checkbox"
				name="inhibitor" id="inhibitor"><label for = "inhibitor"  class="checkbox-inline" style="color: #black"
				onclick="checkbox_Check()"> <span>first inhibitor</span>
			</label> 
			<input type="checkbox"
				name="baron" id="baron"><label for = "baron"  class="checkbox-inline" style="color: #black"
				onclick="checkbox_Check()"> <span>first baron</span>
			</label> 
			<input type="checkbox"
				name=dragon id=dragon><label for = "dragon"  class="checkbox-inline" style="color: #black"
				onclick="checkbox_Check()"> <span>first dragon </span>
			</label>
			<input type="submit" class="btn btn-info" value="search"
				style="margin: 10px"> <input type="hidden" id="search"
				name="search" value="search">
		</form>
	</div>
</div>
<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});

window.addEventListener("wheel", function(e){
	e.preventDefault();
},{passive : false});

var $html = $("html");

var page = 1;
 
var lastPage = $(".content").length;
 
$html.animate({scrollTop:0},10);

$(window).on("wheel", function(e){
	 
	if($html.is(":animated")) return;
 
	if(e.originalEvent.deltaY > 0){
		if(page== lastPage) return;
 
		page++;
	}else if(e.originalEvent.deltaY < 0){
		if(page == 1) return;
 
		page--;
	}
	var posTop = (page-1) * $(window).height();
 
	$html.animate({scrollTop : posTop});
 
});

$(document).ready(function (e){
	
	$(document).on("click","#graph",function(){
		var path = $(this).attr('src')
		showImage(path);
	});//end click event
	
	function showImage(fileCallPath){
	    
	    $(".bigPictureWrapper").css("display","flex").show();
	    
	    $(".bigPicture")
	    .html("<img src='"+fileCallPath+"' >")
	    .animate({width:'100%', height: '100%'}, 1000);
	    
	  }//end fileCallPath
	  
	$(".bigPictureWrapper").on("click", function(e){
	    $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
	    setTimeout(function(){
	      $('.bigPictureWrapper').hide();
	    }, 1000);
	  });//end bigWrapperClick event
});

function checkbox_Check() {
	if ($("input:checkbox[name=blood]").is(":checked") == true) {
		document.getElementById("blood").value = 1;
	} else {
		document.getElementById("blood").value = 0;
	}
	if ($("input:checkbox[name=tower]").is(":checked") == true) {
		document.getElementById("tower").value = 1;
	} else {
		document.getElementById("tower").value = 0;
	}
	if ($("input:checkbox[name=inhibitor]").is(":checked") == true) {
		document.getElementById("inhibitor").value = 1;
	} else {
		document.getElementById("inhibitor").value = 0;
	}
	if ($("input:checkbox[name=baron]").is(":checked") == true) {
		document.getElementById("baron").value = 1;
	} else {
		document.getElementById("baron").value = 0;
	}
	if ($("input:checkbox[name=dragon]").is(":checked") == true) {
		document.getElementById("dragon").value = 1;
	} else {
		document.getElementById("dragon").value = 0;
	}

	var checkboxes = document.querySelectorAll("[type=checkbox]");
	console.log("모든 체크박스", checkboxes);

	for (var i = 0; i < checkboxes.length; i++) {
		var checkbox = checkboxes[i];
		console.log("각체크박스", checkbox, checkbox.checked);
	}
}

</script>

</body>
</html>