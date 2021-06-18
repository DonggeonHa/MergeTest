<%@page import="com.toymarket.vo.Products"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>토이마켓 : 내일의 장보기, 토이마켓</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"></link>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		<style type="text/css">
			.container {
				width: 1050px !important;
    			margin: 0 auto !important;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-12 pt-4 border px-4">
					<div class="d-flex align-items-end">
						<div class="py-2 bd-highlight">신상품</div>
					</div>
					<div class="d-flex justify-content-between">
						<div>전체보기</div>
						<div>
							<select class="form-select-sm" aria-label="Default select example">
								<option value="1" selected>추천순</option>
								<option value="2">신상품순</option>
								<option value="3">인기상품순</option>
								<option value="3">혜택순</option>
								<option value="3">낮은 가격순</option>
								<option value="3">높은 가격순</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-12 border px-4">
					<div>
						<div class="row row-cols-1 row-cols-md-3">
							<c:forEach var="product" items="${products}">
								<div class="col py-5" id="productList">
									<div class="card h-100" id="card">
										<img src="${product.image}" class="card-img-top" alt="...">
										<div class="card-body">
											<h5 class="card-title">[${product.brand}] ${product.name}</h5>
											<h4 class="bold">${product.price}원</h4>
											<p class="card-text light"><font size="2" color="#A9A9A9">상품설명상품설명</font></p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<div class="mt-5">
							<nav aria-label="Page navigation example" class="d-flex justify-content-center">
								<ul class="pagination">
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
										</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item">
										<a class="page-link" href="#" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function getProductList() {
				
				var divEl = document.querySelector("#productList #card");
				divEl.innerHTML = "";
			}
		</script>
	</body>
</html>