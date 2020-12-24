<!-- Sidebar -->
<div class="bg-light border-right" id="sidebar-wrapper">
	<div class="sidebar-heading">Admin Dashboard</div>
	<div class="list-group list-group-flush">
		<a href="#" class="list-group-item list-group-item-action bg-light">View Home</a> 
		<a href="index.html" class="list-group-item list-group-item-action bg-light">Dashboard Overview</a>
			
		<div class="list-group-item list-group-item-action bg-light nav-item ">
			<b> Posts </b>
			<div class="mt-2">
				<a href="<c:url value='/admin/articles'/>?action=edit" class="border-bottom p-10 block list-group-item-action"> New post</a> 
				<a href="<c:url value='/admin/articles'/>" class="p-10 block list-group-item-action"> List posts </a>
			</div>
		</div>

		<div class="list-group-item list-group-item-action bg-light nav-item ">
			<b>Category</b>
			<div class="mt-2">
				<a href="<c:url value='/admin/categories'/>?action=edit" class="border-bottom p-10 block list-group-item-action"> New category </a> 
				<a href="<c:url value='/admin/categories'/>" class="p-10 block list-group-item-action"> List categories </a>
			</div>
		</div>

		<div class="list-group-item list-group-item-action bg-light nav-item ">
			<b>User</b>
			<div class="mt-2">
				<a href="<c:url value='/admin/users'/>?action=edit" class="border-bottom p-10 block list-group-item-action"> New user</a> 
				<a href="<c:url value='/admin/users'/>" class="p-10 block list-group-item-action"> List users </a>
			</div>
		</div>

		<a href="#" class="list-group-item list-group-item-action bg-light">Other</a>
	</div>
</div>
<!-- END SIDEBAR -->