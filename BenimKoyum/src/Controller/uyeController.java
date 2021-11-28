package Controller;

import java.util.*;

import Controller.databaseConnection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


import Model.uyeModel;

public class uyeController extends databaseConnection{

	public List<uyeModel> readingData(){
   	 
 	   try {
 		   String sorgu="SELECT * FROM uye";
 		   Class.forName("com.mysql.jdbc.Driver");
 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
            ps=con.prepareStatement(sorgu);
            ResultSet rs=ps.executeQuery();
            List<uyeModel> liste=new ArrayList<>();
            while(rs.next())
            {
            	uyeModel uye=new uyeModel(rs.getString("kullaniciAdi"),rs.getString("ad"),rs.getString("soyad"),
            							rs.getString("telefon"),rs.getString("eMail"),rs.getString("sifre"),
            							rs.getString("sehir"),rs.getString("ilce"),rs.getString("adres"));
            		
            	liste.add(uye);
            }
            
            return liste;
         
        } 
        catch (ClassNotFoundException | SQLException exception) {
            System.out.println("Bir hata meydana geldi:"+exception);
            return null;
        }
 	   finally{ 
            try {
                if(con!=null){ 
                    con.close();
                }
                if(ps!=null){ 
                    ps.close();
                }
            } catch (SQLException sqlException) {
                System.out.println("Bir hata meydana geldi:"+sqlException);
            }
        }
 	   
     }
	
	
	public void Add(uyeModel uyemodel){
	   	  
		
	 	   try {
	 		   String sorgu="INSERT INTO uye(kullaniciAdi,ad,soyad,telefon,eMail,sifre,sehir,ilce,adres) VALUES(?,?,?,?,?,?,?,?,?)";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
	            ps=con.prepareStatement(sorgu);
	            
	            
	            ps.setString(1, uyemodel.getKullaniciAdi());
	            ps.setString(2, uyemodel.getAd());
	            ps.setString(3, uyemodel.getSoyad());
	            ps.setString(4, uyemodel.getTelefon());
	            ps.setString(5, uyemodel.geteMail());
	            ps.setString(6, uyemodel.getSifre());
	            ps.setString(7, uyemodel.getSehir());
	            ps.setString(8, uyemodel.getIlce());
	            ps.setString(9, uyemodel.getAdres());
	          
	           ps.executeUpdate();
	 	   }
	           
	            catch(ClassNotFoundException | SQLException exception)
	            {
	                System.out.println(exception);
	                setErrorMessage(exception.toString());
	            }
	            finally 
	            {
	                try {
	                    if(con!=null){
	                        con.close();
	                    }
	                    if(ps!=null){
	                        ps.close();
	                    }
	                }
	                catch(SQLException sqlException)
	                {
	                    System.out.println(sqlException);
	                }
	            }
	            
	        }


			private void setErrorMessage(String string) {
					// TODO Auto-generated method stub
		
			}
	

		public void Remove(uyeModel uyemodel){
 	  
			
			try {
				String sorgu="DELETE FROM uye WHERE kullaniciAdi=?";
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
				ps=con.prepareStatement(sorgu);	    
	            ps.setString(1,uyemodel.getKullaniciAdi());
	            ps.executeUpdate();
	 	   }
	           
	            catch(ClassNotFoundException | SQLException exception)
	            {
	                System.out.println(exception);
	                setErrorMessage(exception.toString());
	            }
	            finally 
	            {
	                try {
	                    if(con!=null){
	                        con.close();
	                    }
	                    if(ps!=null){
	                        ps.close();
	                    }
	                }
	                catch(SQLException sqlException)
	                {
	                    System.out.println(sqlException);
	                }
	            }
	            
			}
		


	
		public void Update(uyeModel uyemodel){
	  
			
			try {
				String sorgu="UPDATE uye SET ad=?,soyad=?,telefon=?,eMail=?,sifre=?,sehir=?,ilce=?,adres=? WHERE kullaniciAdi=?";
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
				ps=con.prepareStatement(sorgu);	    
		        
				
	            ps.setString(1, uyemodel.getAd());
	            ps.setString(2, uyemodel.getSoyad());
	            ps.setString(3, uyemodel.getTelefon());
	            ps.setString(4, uyemodel.geteMail());
	            ps.setString(5, uyemodel.getSifre());
	            ps.setString(6, uyemodel.getSehir());
	            ps.setString(7, uyemodel.getIlce());
	            ps.setString(8, uyemodel.getAdres());
	            ps.setString(9, uyemodel.getKullaniciAdi());
	            
		        ps.executeUpdate();
			   }
		       
		        catch(ClassNotFoundException | SQLException exception)
		        {
		            System.out.println(exception);
		            setErrorMessage(exception.toString());
		        }
		        finally 
		        {
		            try {
		                if(con!=null){
		                    con.close();
		                }
		                if(ps!=null){
		                    ps.close();
		                }
		            }
		            catch(SQLException sqlException)
		            {
		                System.out.println(sqlException);
		            }
		        }
		        
			}
		
		
		public void uyeUpdate(uyeModel uyemodel){
			  
			
			try {
				String sorgu="UPDATE uye SET ad=?,soyad=?,telefon=?,eMail=?,sehir=?,ilce=?,adres=? WHERE kullaniciAdi=?";
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
				ps=con.prepareStatement(sorgu);	    
		        
				
	            ps.setString(1, uyemodel.getAd());
	            ps.setString(2, uyemodel.getSoyad());
	            ps.setString(3, uyemodel.getTelefon());
	            ps.setString(4, uyemodel.geteMail());
	            ps.setString(5, uyemodel.getSehir());
	            ps.setString(6, uyemodel.getIlce());
	            ps.setString(7, uyemodel.getAdres());
	            ps.setString(8, uyemodel.getKullaniciAdi());
	            
		        ps.executeUpdate();
			   }
		       
		        catch(ClassNotFoundException | SQLException exception)
		        {
		            System.out.println(exception);
		            setErrorMessage(exception.toString());
		        }
		        finally 
		        {
		            try {
		                if(con!=null){
		                    con.close();
		                }
		                if(ps!=null){
		                    ps.close();
		                }
		            }
		            catch(SQLException sqlException)
		            {
		                System.out.println(sqlException);
		            }
		        }
		        
			}
		
		public boolean control(uyeModel uye) {
				
				String userName = uye.getKullaniciAdi();
				String password = uye.getSifre();
				boolean result=false;
				String userNameDB = "";
		        String passwordDB = "";
				try {
					
					String sorgu="SELECT kullaniciAdi,sifre FROM uye";
		 		   	Class.forName("com.mysql.jdbc.Driver");
		 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
		            ps=con.prepareStatement(sorgu);	
		            
		            ResultSet rs=ps.executeQuery();
		            while(rs.next()) 
		             {
		            	userNameDB = rs.getString("kullaniciAdi"); 
		            	passwordDB = rs.getString("sifre");
		 
		            	if(userName.equals(userNameDB) && password.equals(passwordDB))
		            	{
		                  result=true; 
		            	}
		             }
		            return result;
				}
				catch(ClassNotFoundException | SQLException exception)
			        {
			            System.out.println(exception);
			            setErrorMessage(exception.toString());
			           return result;
			        }
				finally 
		        {
		            try {
		                if(con!=null){
		                    con.close();
		                }
		                if(ps!=null){
		                    ps.close();
		                }
		            }
		            catch(SQLException sqlException)
		            {
		                System.out.println(sqlException);
		            }
		        }

		}
		
		public uyeModel readingData(String user){
		   	 
		 	   try {
		 		   String sorgu="SELECT * FROM uye WHERE kullaniciAdi=?";
		 		   Class.forName("com.mysql.jdbc.Driver");
		 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
		            ps=con.prepareStatement(sorgu);
		            ps.setString(1,user);
		            ResultSet rs=ps.executeQuery();
		            uyeModel uye;
		           
		            
		            	 uye=new uyeModel(rs.getString("kullaniciAdi"),rs.getString("ad"),rs.getString("soyad"),
		            							rs.getString("telefon"),rs.getString("eMail"),rs.getString("sifre"),
		            							rs.getString("sehir"),rs.getString("ilce"),rs.getString("adres"));
		            		
		            	
		            
		            
		            return uye;
		         
		        } 
		        catch (ClassNotFoundException | SQLException exception) {
		            System.out.println("Bir hata meydana geldi:"+exception);
		            return null;
		        }
		 	   finally{ 
		            try {
		                if(con!=null){ 
		                    con.close();
		                }
		                if(ps!=null){ 
		                    ps.close();
		                }
		            } catch (SQLException sqlException) {
		                System.out.println("Bir hata meydana geldi:"+sqlException);
		            }
		        }
		 	   
		     }
		
}
