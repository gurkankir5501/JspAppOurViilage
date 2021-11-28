<%@page import="Model.urunModel,java.util.*" %>

    <div class="nava fx" style="width: 100%">
        <nav class="navbar navbar-light ml">

            <form class="form-inline yer1">
                <input class="form-control mr-sm-2 opak1" id="font1" style="width: 600px;height: 50px" type="search" placeholder="Aradiginiz Urunun Adini Yaziniz" aria-label="Search">
                <button class="btn btn-outline-light ml-3 text-monospace" type="submit">Ara</button>
            </form>
			
			<%
				
				String cookieName = "username";
				Cookie cookies [] = request.getCookies();
				Cookie myCookie = null;
				if (cookies != null){
					
					for (int i = 0; i < cookies.length; i++){
						
						if (cookies [i].getName().equals(cookieName)){
								
							myCookie = cookies[i];
							break;
						}
					}
				}
				
				

			%>
			
			
            <ul class="nav justify-content-end mt-3 mr-5 " style="margin-left: 150px;">
            
            
            <% 
			
            	if(myCookie!=null){
            		
            		
            		if(myCookie.getValue().equals("false")) {
    					
            			%>
            	            <li class="nav-item hover1 ">
                                <a class="nav-link text-white " href="uyeGiris.jsp"><img src="../img/users.jpg" class="ml-3 img1" alt=""><br>Hesabim</a>
                            </li>
            			<%		
            				}else{
            			%>
            				<li class="nav-item hover1 ">
                                <a class="nav-link text-white " href="KisiselBilgilerim.jsp"><img src="../img/users.jpg" class="ml-3 img1" alt=""><br>Hesabim</a>
                            </li>
            			<%	}

            		
            	}else{
            		
            		%>
    	            <li class="nav-item hover1 ">
                        <a class="nav-link text-white " href="uyeGiris.jsp"><img src="../img/users.jpg" class="ml-3 img1" alt=""><br>Hesabim</a>
                    </li>
    			<%	
            		
            		
            	}
            
			%>
			
			<%
				int urunSayisi;
				List<urunModel> urunlerim=(List<urunModel>)session.getAttribute("sepet");
				if(urunlerim!=null){
					
					urunSayisi=urunlerim.size();
				}
				else{
					urunSayisi=0;
				}
			%>
			
		
 					<li class="nav-item hover1     ">
                    <a class="nav-link text-white " href="Sepetim.jsp"><img src="../img/sepet.png" class="img1" alt=""><span class=" rounded-circle " style="padding:2px;background-color:#f50"><%=urunSayisi %></span><br> Sepetim</a>
                </li>
 		
                

            </ul>
        </nav>
		
		

        <div class="alert  bg-dark opak2 fx " style="width:100%;" role="alert">
            <ul class="mb-4 ul1">
                <li class="li1"><a class=" aa ab" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" id="gk"><img src="../img/bar-icon.png" class="img1" alt="">
                        Tum Kategoriler
                    </a></li>
                <div id="list-example">
                    <li class="li1"><a href="Home.jsp#list-item-1" class="aa ab" id="asd">Yeni Urunler</a></li>
                    <li class="li1"><a href="Home.jsp#list-item-2" class="aa ab">Indirimdekiler</a></li>
                    <li class="li1"><a href="Home.jsp#list-item-3" class="aa ab">Cok Satanlar</a></li>
                    <li class="li1"><a href="Home.jsp#list-item-4" class="aa ab">Hikayemiz</a></li>
                    <li class="li1"><a href="Home.jsp#list-item-5" class="aa ab">Iletisim</a></li>
                </div>

            </ul>
            <a href="Home.jsp"><img src="../img/gk.jpg" class="img2 trans1" alt=""></a>
        </div>
        		
    </div>

