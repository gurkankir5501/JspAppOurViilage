package Model;

public class uyeModel {

	private String kullaniciAdi;
	private String ad;
	private String soyad;
	private String telefon;
	private String eMail;
	private String sifre;
	private String sehir;
	private String ilce;
	private String adres;
	
	
	
	public uyeModel(String kullaniciAdi, String ad, String soyad, String eMail, String sifre) {
		
		this.kullaniciAdi = kullaniciAdi;
		this.ad = ad;
		this.soyad = soyad;
		this.eMail = eMail;
		this.sifre = sifre;
	}


	public uyeModel(String kullaniciAdi) {
		
		this.kullaniciAdi = kullaniciAdi;
	}
	
	
	public uyeModel(String kullaniciAdi, String sifre) {
		
		this.kullaniciAdi = kullaniciAdi;
		this.sifre = sifre;
	}


	public uyeModel(String kullaniciAdi, String ad, String soyad, String telefon, String eMail, String sehir,
			String ilce, String adres) {
		
		this.kullaniciAdi = kullaniciAdi;
		this.ad = ad;
		this.soyad = soyad;
		this.telefon = telefon;
		this.eMail = eMail;
		this.sehir = sehir;
		this.ilce = ilce;
		this.adres = adres;
	}


	public uyeModel(String kullaniciAdi, String ad, String soyad, String telefon, String eMail, String sifre, String sehir,
			String ilce, String adres) {
		
		this.kullaniciAdi = kullaniciAdi;
		this.ad = ad;
		this.soyad = soyad;
		this.telefon = telefon;
		this.eMail = eMail;
		this.sifre = sifre;
		this.sehir = sehir;
		this.ilce = ilce;
		this.adres = adres;
	}
	public String getKullaniciAdi() {
		return kullaniciAdi;
	}
	public String getAdres() {
		return adres;
	}
	
	public void setAdres(String adres) {
		this.adres = adres;
	}
	public void setKullaniciAdi(String kullaniciAdi) {
		this.kullaniciAdi = kullaniciAdi;
	}
	
	public String getAd() {
		return ad;
	}
	public void setAd(String ad) {
		this.ad = ad;
	}
	
	public String getSoyad() {
		return soyad;
	}
	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}
	
	public String getTelefon() {
		return telefon;
	}
	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	
	public String getSifre() {
		return sifre;
	}
	public void setSifre(String sifre) {
		this.sifre = sifre;
	}
	
	public String getSehir() {
		return sehir;
	}
	public void setSehir(String sehir) {
		this.sehir = sehir;
	}
	
	public String getIlce() {
		return ilce;
	}
	public void setIlce(String ilce) {
		this.ilce = ilce;
	}
}
