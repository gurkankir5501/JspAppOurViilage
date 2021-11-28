<%@page import ="Controller.kategoriController,Model.kategoriModel"%>

<%

String kategoriNumarasi=request.getParameter("kategoriNumarasi");
String kategoriAdi=request.getParameter("kategoriAdi");
int kNumarasi=Integer.valueOf(kategoriNumarasi);

kategoriModel kt=new kategoriModel(kNumarasi,kategoriAdi);
kategoriController dbe=new kategoriController();
boolean result=dbe.control(kt);
	
if(result){
	
	dbe.Update(kt);
}
else{
	
	dbe.Add(kt);
}
response.sendRedirect("adminpanel.jsp#list-item-2");
%>