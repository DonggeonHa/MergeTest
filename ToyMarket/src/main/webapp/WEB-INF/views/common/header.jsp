<%@ page pageEncoding="UTF-8"%>

<header>
	<!-- 유저메뉴 -->
	<div class="row" style="background-color: purple">
		<div class="col-12 text-end usermenu">
			<a href="" class="btn" style="color: white; font-weight: bold">로그인</a>
			<a href="" class="btn" style="color: white; font-weight: bold">회원가입</a>
		</div>
	</div>


	<!-- 홈 -->
	<div class="row" style="background-color: light">
		<div class="col-12">
			<h1>
				<a href="/home"><img src="resources/images/kurlyLogo2.png"
					width="100" class="logo img-rounded img-fluid" alt="rr"></a>
			</h1>
		</div>
	</div>


	<!-- 메뉴 -->
	<nav class="navbar navbar-expand-md navbar-light bg-light">
		<div class="container">
			<div class="col-6">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item dropdown"><a
							class="mt-2 mx-4 nav-link dropdown-toggle" href="#"
							id="navbarDropdown" role="button" data-bs-toggle="dropdown"
							aria-expanded="false">카테고리</a>
							<ul class="dropdown-menu" aria=labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">고기</a></li>
								<li><a class="dropdown-item" href="#">채소</a></li>
								<li><a class="dropdown-item" href="#">과일</a></li>
							</ul></li>
						<li class="nav-item"><a class="mt-2 mx-4 nav-link" href="#">할인상품</a></li>
						<li class="nav-item"><a class="mt-2 mx-4 nav-link" href="#">공지사항</a></li>
						<li class="nav-item"><a class="mt-2 mx-4 nav-link" href="#">공지사항</a></li>
					</ul>
				</div>
			</div>
			<div class="col-2"></div>
			<!-- 검색창 -->
			<div class="col-3 mt-2 ml-2">
				<div class="input-group" style="float: right">
					<input type="text" class="form-control"
						placeholder="Recipient's username"
						aria-label="Recipient's username" aria-describedby="button-addon2">
					<button class="btn btn-outline-secondary" type="button"
						id="button-addon2">Button</button>
				</div>
			</div>

			<!-- 장바구니 이미지 -->
			<div class="col-1 mx-4">
				<div class="col-1 mt-2">
					<a href="#">
						<button class="btn btn-outline-secondary" style="border: 0px"
							type="button" id="button-addon2">
							<img src="resources/images/basket.png" class="img-rounded"
								alt="장바구니img">
						</button>
					</a>
				</div>
			</div>
		</div>
	</nav>
</header>


