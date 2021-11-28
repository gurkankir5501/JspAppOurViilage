<%@page import ="Controller.uyeController,Model.uyeModel"%>

<%

String kullaniciAdi=request.getParameter("kullaniciAdi");
String sifre=request.getParameter("sifre");
String ad=request.getParameter("ad");
String soyad=request.getParameter("soyad");
String telefon=request.getParameter("telefon");
String mail=request.getParameter("mail");
String sehir=request.getParameter("sehir");
String ilce=request.getParameter("ilce");
String adres=request.getParameter("adres");

uyeModel uye=new uyeModel(kullaniciAdi,ad,soyad,telefon,mail,sifre,sehir,ilce,adres);
uyeController db=new uyeController();
boolean result=db.control(uye);
	
if(result){
	
	db.Update(uye);
}
else{
	
	db.Add(uye);
}
response.sendRedirect("adminpanel.jsp#list-item-1");
%>