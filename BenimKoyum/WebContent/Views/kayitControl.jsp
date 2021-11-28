<%@ page import="Controller.uyeController,Model.uyeModel,java.util.*"%>


<%

	boolean result=false;

	String kullaniciAdi = request.getParameter("kullaniciAdi");
	String sifre = request.getParameter("sifre");
	String ad = request.getParameter("ad");
	String soyad = request.getParameter("soyad");
	String eMail = request.getParameter("eMail");

	uyeController uDao=new uyeController();
	List<uyeModel> uyeler=uDao.readingData();

	for(uyeModel uye:uyeler) {
			
		if(uye.getKullaniciAdi().equals(kullaniciAdi)) {
		
			result=true;
			break;
		}
	}

	if(result) {
	
		session.setAttribute("kayit","true");
		response.sendRedirect("uyeKayit.jsp");
	}
	else {
		
		session.setAttribute("kayit","false");
		uyeModel uModel=new uyeModel(kullaniciAdi,ad,soyad," ",eMail,sifre," "," "," ");
		uDao.Add(uModel);
		response.sendRedirect("uyeKayit.jsp");
	}

%>