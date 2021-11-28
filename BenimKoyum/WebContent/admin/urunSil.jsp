<%@page import ="Controller.urunController,Model.urunModel"%>

<%
			String id=request.getQueryString();
			int index=Integer.valueOf(id);
			urunModel uye=new urunModel(index);
			urunController db=new urunController();
			db.Remove(uye);
			response.sendRedirect("adminpanel.jsp#list-item-3");
%>