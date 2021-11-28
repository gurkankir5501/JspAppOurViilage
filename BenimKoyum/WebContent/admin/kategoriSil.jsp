<%@page import ="Controller.kategoriController,Model.kategoriModel"%>

<%
			String id=request.getQueryString();
			int index=Integer.valueOf(id);
			kategoriModel kategori=new kategoriModel(index);
			kategoriController db=new kategoriController();
			db.Remove(kategori);
			response.sendRedirect("adminpanel.jsp#list-item-2");
%>