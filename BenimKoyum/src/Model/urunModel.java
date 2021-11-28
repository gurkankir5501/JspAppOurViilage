package Model;


public class urunModel {

	private int urunKodu;
	private String urunAdi;
	private String urunDetay;
	private int urunFiyat;
	private int urunAdet;
	private String fotograf;
	private int ozelKategori;
	private int kategoriKodu;
	
	
	public urunModel(int urunKodu) {
	
		this.urunKodu = urunKodu;
	}

	
	public urunModel(int urunKodu, String fotograf, String urunAdi, int urunFiyat) {
	
		this.urunKodu = urunKodu;
		this.fotograf = fotograf;
		this.urunAdi = urunAdi;
		this.urunFiyat = urunFiyat;
	}


	public urunModel(String urunAdi, String urunDetay, int urunFiyat, int urunAdet, String fotograf, int ozelKategori,
			int kategoriKodu) {
		super();
		this.urunAdi = urunAdi;
		this.urunDetay = urunDetay;
		this.urunFiyat = urunFiyat;
		this.urunAdet = urunAdet;
		this.fotograf = fotograf;
		this.ozelKategori = ozelKategori;
		this.kategoriKodu = kategoriKodu;
	}


	public urunModel(int urunKodu, String urunAdi, String urunDetay, int urunFiyat, int urunAdet, String fotograf,
			int ozelKategori, int kategoriKodu) {
		
		this.urunKodu = urunKodu;
		this.urunAdi = urunAdi;
		this.urunDetay = urunDetay;
		this.urunFiyat = urunFiyat;
		this.urunAdet = urunAdet;
		this.fotograf = fotograf;
		this.ozelKategori = ozelKategori;
		this.kategoriKodu = kategoriKodu;
	}

	public String getFotograf() {
		return fotograf;
	}

	public void setFotograf(String fotograf) {
		this.fotograf = fotograf;
	}

	
	public int getOzelKategori() {
		return ozelKategori;
	}
	public void setOzelKategori(int ozelKategori) {
		this.ozelKategori = ozelKategori;
	}
	public int getKategoriKodu() {
		return kategoriKodu;
	}
	public void setKategoriKodu(int kategoriKodu) {
		this.kategoriKodu = kategoriKodu;
	}
	public int getUrunKodu() {
		return urunKodu;
	}
	public void setUrunKodu(int urunKodu) {
		this.urunKodu = urunKodu;
	}
	public String getUrunAdi() {
		return urunAdi;
	}
	public void setUrunAdi(String urunAdi) {
		this.urunAdi = urunAdi;
	}
	public String getUrunDetay() {
		return urunDetay;
	}
	public void setUrunDetay(String urunDetay) {
		this.urunDetay = urunDetay;
	}
	public int getUrunFiyat() {
		return urunFiyat;
	}
	public void setUrunFiyat(int urunFiyat) {
		this.urunFiyat = urunFiyat;
	}
	public int getUrunAdet() {
		return urunAdet;
	}
	public void setUrunAdet(int urunAdet) {
		this.urunAdet = urunAdet;
	}

   
   
}
