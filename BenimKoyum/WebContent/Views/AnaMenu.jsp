<%@page import="Controller.kategoriController,Model.kategoriModel,java.util.*" %>
<% 
		kategoriController dby=new kategoriController();
		List<kategoriModel> kategorilerrr=dby.readingData();

%>


    <div class="collapse bg-light" id="collapseExample">
        <div id='cssmenu' class="menu3 " style="height: 100%">
            <h4 class="ml-3 text-dark ">Tüm Kategoriler</h4>
            <hr>

            <ul class="list-group">

			<%
					for(kategoriModel kategorii:kategorilerrr){
					%>	
						<li class=" ab  border-bottom  list-group-item ab2" style="height: 50px">
	                    	<a href="Urunler.jsp?k=<%=kategorii.getKategoriId()%>"  role="button" type="submit" style="width: 100%">
	                      	  <p class=" ml-2 float-left " style="font-size:15px"><%=kategorii.getKategoriAdi()%></p>
	                    	</a>
	                	</li>
				<%	}%>
			

            </ul>
        </div>
    </div>

