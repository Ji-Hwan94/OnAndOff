<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header -->
<jsp:include page="../includes/head.jsp"/>
<style>
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  h1{
  	margin-top:0px;
  	margin-bottom:25px;
  }
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #337ab7; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }

  .panel-heading {
    color: #fff !important;
    background-color: #337ab7 !important;
    padding: 5px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }

  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }

  .slideanim {visibility:true;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  .img-thumbnail{
  	width:100%;
  	height:270px;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }

</style>
<jsp:include page="../includes/small-header.jsp"/>
<!-- Container Main -->
<div class='wrap'>
	<div id="location" class="content-box container">
		<div class="text-center">
			<h1>
				<strong>????????? ???????????? ??????</strong>
			</h1>
		</div>
		<div class="col-sm-12">
			<div class="row slideanim">
				<div class="col-sm-4 col-xs-4">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h3>
								<strong>????????? ??????</strong>
							</h3>
						</div>
						<div class="panel-body">
							<button class="btn btn-primary" type="button" id="btn1">??????????????????</button>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h3>
								<strong>?????? ??????</strong>
							</h3>
						</div>
						<div class="panel-body">
							<button class="btn btn-primary" type="button" id="btn2">??????????????????</button>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xs-12">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<h3>
								<strong>?????? ??????</strong>
							</h3>
						</div>
						<div class="panel-body">
							<button class="btn btn-primary" type="button" id="btn3">??????????????????</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content-box container" id="page-content">
			<div class="col-sm-12 col-xs-12">
				<div class="panel panel-primary">
					<div class="panel-heading text-center">????????? ??????</div>
					<div class="panel-body">
						<div class="col-sm-7 img-frame">
							<img src="#" class="img-responsive img-thumbnail" alt="Image">
						</div>
						<div class="col-sm-5">
							<div class="list-group">
								<div class="text-center">
									<div class="list-group-item-heading si">
										<strong>?????? ??????</strong>
									</div>
									<div class="list-si"></div>
									<div class="list-group-item-heading do">
										<strong>?????? ??????</strong>
									</div>
									<div class="list-do"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<form id='typeForm' action='/Location/information' method='GET'>
		<input type='hidden' name='type' value=''> <input
			type='hidden' name='keyword' value=''>
	</form>
</div>
<script>
	$(function() {

		const typeForm = $("#typeForm");
		const page = $("#page-content");

		page.on("click", "a", function(e) {
			e.preventDefault();
			const type = $(this).attr("href").replace("/", "");
			console.log(type);
			typeForm.find("[name='type']").val(type);
			typeForm.submit();
		});

		page.hide();

		$("#btn1")
				.on(
						"click",
						function(e) {
							$("#page-content .panel-heading").html("???????????????");
							$("#page-content img").attr("src",
									"/resources/img/seoul.png");
							$(".list-si")
									.html(
											"<div class='list-item'><a href='/S'><p>???????????????</p></a></div>");
							$(".list-si")
									.append(
											"<div class='list-item'><a href='/I'><p>???????????????</p></a></div>");
							$(".list-do")
									.html(
											"<div class='list-item'><a href='/G'><p>?????????</p></a></div>");
							page.show();
						});
		$("#btn2")
				.on(
						"click",
						function(e) {
							$("#page-content .panel-heading").html("????????????");
							$("#page-content img").attr("src",
									"/resources/img/jeonju.png");
							$(".list-si")
									.html(
											"<div class='list-item'><a href='/A'><p>???????????????</p></a></div>");
							$(".list-si")
									.append(
											"<div class='list-item'><a href='/Q'><p>???????????????</p></a></div>");
							$(".list-do")
									.html(
											"<div class='list-item'><a href='/J'><p>????????????</p></a></div>");
							$(".list-do")
									.append(
											"<div class='list-item'><a href='/N'><p>????????????</p></a></div>");
							$(".list-do")
									.append(
											"<div class='list-item'><a href='/C'><p>????????????</p></a></div>");
							$(".list-do")
									.append(
											"<div class='list-item'><a href='/D'><p>????????????</p></a></div>");
							$(".list-do")
									.append(
											"<div class='list-item'><a href='/W'><p>?????????</p></a></div>");
							page.show();
						});
		$("#btn3")
				.on(
						"click",
						function(e) {
							$("#page-content .panel-heading").html("????????????");
							$("#page-content img").attr("src",
									"/resources/img/busan.jpg");
							$(".list-si")
									.html(
											"<div class='list-item'><a href='/B'><p>???????????????</p></a></div>");
							$(".list-si")
									.append(
											"<div class='list-item'><a href='/U'><p>???????????????</p></a></div>");
							$(".list-si")
									.append(
											"<div class='list-item'><a href='/E'><p>???????????????</p></a></div>");
							$(".list-do")
									.html(
											"<div class='list-item'><a href='/K'><p>????????????</p></a></div>");
							$(".list-do")
									.html(
											"<div class='list-item'><a href='/P'><p>????????????</p></a></div>");
							page.show();
						});
	});
</script>
<jsp:include page="../includes/footer.jsp"/>