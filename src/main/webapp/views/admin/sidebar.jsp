<!-- Sidebar -->
<div class="bg-light border-right" id="sidebar-wrapper">
	<a href="${pageContext.request.contextPath}/admin/">
		<div class="sidebar-heading"> <b>Admin Dashboard</b> </div>
	</a>
	<div class="list-group list-group-flush">
		<a href="#" class="list-group-item list-group-item-action bg-light">Ptinews Home</a> 
		
			
		<div class="list-group-item list-group-item-action bg-light nav-item ">
			<b> Articles </b>
			<div class="mt-2">
				<a href="<c:url value='/admin/articles'/>?action=create" class="border-bottom p-10 block list-group-item-action"> New article</a> 
				<a href="<c:url value='/admin/articles'/>" class="p-10 block list-group-item-action"> List articles </a>
			</div>
		</div>

		<div class="list-group-item list-group-item-action bg-light nav-item ">
			<b>Category</b>
			<div class="mt-2">
				<a href="<c:url value='/admin/categories'/>?action=create" class="border-bottom p-10 block list-group-item-action"> New category </a> 
				<a href="<c:url value='/admin/categories'/>?action=list" class="p-10 block list-group-item-action"> List categories </a>
			</div>
		</div>

		<div class="list-group-item list-group-item-action bg-light nav-item ">
			<b>User</b>
			<div class="mt-2">
				<a href="<c:url value='/admin/users'/>?action=create" class="border-bottom p-10 block list-group-item-action"> New user</a> 
				<a href="<c:url value='/admin/users'/>" class="p-10 block list-group-item-action"> List users </a>
			</div>
		</div>

		<div class="list-group-item list-group-item-action bg-light nav-item ">  
          <b>Tag</b> 
          <div class="mt-2">
            <a href="<c:url value='/admin/tags'/>?action=create" class="border-bottom p-10 block list-group-item-action"> New tag</a>
            <a href="<c:url value='/admin/tags'/>?action=list" class="p-10 block list-group-item-action"> List tags</a>
          </div>
        </div>
        
        <div class="list-group-item list-group-item-action bg-light nav-item ">  
          <b>Comment</b> 
          <div class="mt-2">
            <a href="<c:url value='/admin/comments'/>?action=list" class="p-10 block list-group-item-action"> List comments</a>
          </div>
        </div>
        
        <a href="#" class="list-group-item list-group-item-action bg-light"><b>Other/setting</b></a>
        
	</div>
</div>
<!-- END SIDEBAR -->