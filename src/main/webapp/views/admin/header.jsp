<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
	<a href="${pageContext.request.contextPath}">
		<button class="btn btn-primary" id="menu-toggle">Ptinnews - Home</button>
	</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon">
			<svg xmlns="http://www.w3.org/2000/svg" width="18" viewBox="0 0 24 24">
				<path d="M24 6h-24v-4h24v4zm0 4h-24v4h24v-4zm0 8h-24v4h24v-4z" />
			</svg>
		</span>

	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
			<li class="nav-item active"><a class="nav-link" href="#">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" onclick="myFunction()" id="navbarDropdown" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Howdy,
					${sessionScope.admin.username}
					<svg style="vertical-align: middle;" xmlns="http://www.w3.org/2000/svg" width="14" height="14"
						viewBox="0 0 24 24">
						<path d="M0 7.33l2.829-2.83 9.175 9.339 9.167-9.339 2.829 2.83-11.996 12.17z" />
					</svg>
				</a>
				<div class="dropdown-menu dropdown-menu-right" id="menu-target" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Profile</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="<c:url value="/logout"/>">Logout</a>
				</div>
			</li>
		</ul>
	</div>
</nav>