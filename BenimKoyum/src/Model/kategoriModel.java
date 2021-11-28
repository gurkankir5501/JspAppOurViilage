package Model;

public class kategoriModel {

	private int kategoriId;
    private String kategoriAdi;
    
	public kategoriModel(int kategoriId, String kategoriAdi) {
		
		this.kategoriId = kategoriId;
		this.kategoriAdi = kategoriAdi;
	}

	public kategoriModel(int kategoriId) {
		
		this.kategoriId = kategoriId;
	}

	public int getKategoriId() {
		return kategoriId;
	}

	public void setKategoriId(int kategoriId) {
		this.kategoriId = kategoriId;
	}

	public String getKategoriAdi() {
		return kategoriAdi;
	}

	public void setKategoriAdi(String kategoriAdi) {
		this.kategoriAdi = kategoriAdi;
	}
    
	
	
}
