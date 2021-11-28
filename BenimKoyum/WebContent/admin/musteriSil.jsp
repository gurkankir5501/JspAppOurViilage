<%@page import ="Controller.uyeController,Model.uyeModel"%>

<%
			String idem=request.getQueryString();
			uyeModel uyef=new uyeModel(idem);
			uyeController dbff=new uyeController();
			dbff.Remove(uyef);
			response.sendRedirect("adminpanel.jsp#list-item-1");
%>