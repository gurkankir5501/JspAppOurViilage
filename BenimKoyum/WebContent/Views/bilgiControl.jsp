<%@page import="Model.uyeModel,Controller.uyeController"%>

<%

   		
%>

<%


String cookieNamee = "username";
Cookie cookiess [] = request.getCookies();
Cookie myCookiee = null;
if (cookiess != null){
	
	for (int i = 0; i < cookiess.length; i++){
		
		if (cookiess [i].getName().equals(cookieNamee)){
				
			myCookiee = cookiess[i];
			break;
		}
	}

}
		if(myCookiee!=null){
			

			String ad = request.getParameter("ad");
			String soyad = request.getParameter("soyad");
			String telefon = request.getParameter("telefon");
			String mail = request.getParameter("mail");
			String sehir = request.getParameter("sehir");
			String ilce = request.getParameter("ilce");
			String adres = request.getParameter("adres");

			uyeModel uyeM=new uyeModel(myCookiee.getValue(),ad,soyad,telefon,mail,sehir,ilce,adres);
			uyeController dbuye=new uyeController();
			dbuye.uyeUpdate(uyeM);
		}
		response.sendRedirect("KisiselBilgilerim.jsp");
%>
