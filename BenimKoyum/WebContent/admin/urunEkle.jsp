<%@page import ="Controller.urunController,Model.urunModel"%>

<%

String urunKodu=request.getParameter("urunKodu");
int uKodu=Integer.valueOf(urunKodu);

String urunAdi=request.getParameter("urunAd");
String urunDetayi=request.getParameter("urunDetay");
String adeti=request.getParameter("urunAdet");
int uAdet=Integer.valueOf(adeti);

String urunFiyati=request.getParameter("urunFiyat");
int uFiyat=Integer.valueOf(urunFiyati);

String urunFotografi=request.getParameter("urunFotograf");

String ozelKategori=request.getParameter("ozelKategori");
int uOzelkategori=Integer.valueOf(ozelKategori);

String kategori=request.getParameter("kategori");
int uKategori=Integer.valueOf(kategori);


urunModel urun=new urunModel(uKodu,urunAdi,urunDetayi,uFiyat,uAdet,urunFotografi,uOzelkategori,uKategori);
urunController dbi=new urunController();
boolean result=dbi.control(urun);
	

%>