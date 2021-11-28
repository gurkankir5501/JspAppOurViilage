package Model;

public class yoneticiModel {
	
	private String kullaniciAdi;
	private String sifre;
	
	
	
	
	
	public yoneticiModel(String kullaniciAdi) {
	
		this.kullaniciAdi = kullaniciAdi;
	}

	public yoneticiModel(String kullaniciAdi, String sifre) {
		
		this.kullaniciAdi = kullaniciAdi;
		this.sifre = sifre;
	}

	public String getKullaniciAdi() {
		return kullaniciAdi;
	}

	public void setKullaniciAdi(String kullaniciAdi) {
		this.kullaniciAdi = kullaniciAdi;
	}

	public String getSifre() {
		return sifre;
	}

	public void setSifre(String sifre) {
		this.sifre = sifre;
	}
	
	
	
}
