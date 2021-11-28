<%@page import ="Controller.yoneticiController,Model.yoneticiModel"%>

<%
			String id=request.getQueryString();
			yoneticiModel yonetici =new yoneticiModel(id);
			yoneticiController dbyonetici =new yoneticiController();
			dbyonetici.Remove(yonetici);
			response.sendRedirect("adminpanel.jsp#list-item-5");
%>