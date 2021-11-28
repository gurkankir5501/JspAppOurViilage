package Model;

public class siparisModel {

	 private int siparisKodu;
	 private String siparisTarihi ; 
	 private String isleme; 
	 private String hazirlanma;
	 private String kargolanma ; 
	 private String teslim ;
	 private String odemeTipi;
	 private String uyekullaniciAdi;
	 
	 
	 
	 



	


	public String getUyekullaniciAdi() {
		return uyekullaniciAdi;
	}





	public void setUyekullaniciAdi(String uyekullaniciAdi) {
		this.uyekullaniciAdi = uyekullaniciAdi;
	}





	public siparisModel(int siparisKodu, String siparisTarihi, String isleme, String hazirlanma, String kargolanma,
			String teslim, String odemeTipi, String uyekullaniciAdi) {
		
		this.siparisKodu = siparisKodu;
		this.siparisTarihi = siparisTarihi;
		this.isleme = isleme;
		this.hazirlanma = hazirlanma;
		this.kargolanma = kargolanma;
		this.teslim = teslim;
		this.odemeTipi = odemeTipi;
		this.uyekullaniciAdi = uyekullaniciAdi;
	}


	


	public siparisModel(String siparisTarihi, String isleme, String hazirlanma, String kargolanma, String teslim,
			String odemeTipi, String uyekullaniciAdi) {
		super();
		this.siparisTarihi = siparisTarihi;
		this.isleme = isleme;
		this.hazirlanma = hazirlanma;
		this.kargolanma = kargolanma;
		this.teslim = teslim;
		this.odemeTipi = odemeTipi;
		this.uyekullaniciAdi = uyekullaniciAdi;
	}





	public siparisModel(int siparisKodu, String siparisTarihi, String isleme, String hazirlanma, String kargolanma,
			String teslim, String odemeTipi) {
		super();
		this.siparisKodu = siparisKodu;
		this.siparisTarihi = siparisTarihi;
		this.isleme = isleme;
		this.hazirlanma = hazirlanma;
		this.kargolanma = kargolanma;
		this.teslim = teslim;
		this.odemeTipi = odemeTipi;
	}


	public int getSiparisKodu() {
		return siparisKodu;
	}


	public void setSiparisKodu(int siparisKodu) {
		this.siparisKodu = siparisKodu;
	}


	public String getSiparisTarihi() {
		return siparisTarihi;
	}


	public void setSiparisTarihi(String siparisTarihi) {
		this.siparisTarihi = siparisTarihi;
	}


	public String getIsleme() {
		return isleme;
	}


	public void setIsleme(String isleme) {
		this.isleme = isleme;
	}


	public String getHazirlanma() {
		return hazirlanma;
	}


	public void setHazirlanma(String hazirlanma) {
		this.hazirlanma = hazirlanma;
	}


	public String getKargolanma() {
		return kargolanma;
	}


	public void setKargolanma(String kargolanma) {
		this.kargolanma = kargolanma;
	}


	public String getTeslim() {
		return teslim;
	}


	public void setTeslim(String teslim) {
		this.teslim = teslim;
	}


	public String getOdemeTipi() {
		return odemeTipi;
	}


	public void setOdemeTipi(String odemeTipi) {
		this.odemeTipi = odemeTipi;
	}



	 
	 
	
	
     
     
}
