package Controller;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import Model.yoneticiModel;


public class yoneticiController extends databaseConnection{

	
	
	public List<yoneticiModel> readingData(){
	   	 
	 	   try {
	 		   String sorgu="SELECT * FROM yonetici";
	 		   Class.forName("com.mysql.jdbc.Driver");
	 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
	            ps=con.prepareStatement(sorgu);
	            ResultSet rs=ps.executeQuery();
	            List<yoneticiModel> liste=new ArrayList<>();
	            while(rs.next())
	            {
	            	yoneticiModel uye=new yoneticiModel(rs.getString("kullaniciAdi"),rs.getString("sifre"));
	            		
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
	
	public boolean control(yoneticiModel yonetici) {
		
		String userName = yonetici.getKullaniciAdi();
		String password = yonetici.getSifre();
		boolean result=false;
		String userNameDB = "";
        String passwordDB = "";
		try {
			
			String sorgu="SELECT kullaniciAdi,sifre FROM yonetici";
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
		public void Add(yoneticiModel yonetici){
		   	  
		
		 	   try {
		 		   String sorgu="INSERT INTO yonetici(kullaniciAdi,sifre) VALUES(?,?)";
		 		   Class.forName("com.mysql.jdbc.Driver");
		 		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
		            ps=con.prepareStatement(sorgu);
		            
		            
		            ps.setString(1, yonetici.getKullaniciAdi());
		            ps.setString(2, yonetici.getSifre());
		            
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


				
		

			public void Remove(yoneticiModel yonetici){
	 	  
				
				try {
					String sorgu="DELETE FROM yonetici WHERE kullaniciAdi=?";
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
					ps=con.prepareStatement(sorgu);	    
		            ps.setString(1,yonetici.getKullaniciAdi());
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
	
	
	public void Update(yoneticiModel yonetici){
		  
		
		try {
			String sorgu="UPDATE yonetici SET sifre=? WHERE kullaniciAdi=?";
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/benimKoyum","root","");
			ps=con.prepareStatement(sorgu);	    
	        
            ps.setString(1,yonetici.getSifre());
            ps.setString(2,yonetici.getKullaniciAdi());

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
	


}
