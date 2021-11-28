<%@page import ="Controller.yoneticiController,Model.yoneticiModel"%>

<%

String kullaniciAdi=request.getParameter("kullaniciAdi");
String sifre=request.getParameter("sifre");


yoneticiModel yonetici=new yoneticiModel(kullaniciAdi,sifre);
yoneticiController db=new yoneticiController();
boolean result=db.control(yonetici);
	
if(result){
	
	db.Update(yonetici);
}
else{
	
	db.Add(yonetici);
}
response.sendRedirect("adminpanel.jsp#list-item-5");
%>