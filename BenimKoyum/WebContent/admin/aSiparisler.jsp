<%@page import ="Controller.siparisController,Model.siparisModel,java.util.*"%>


<%
		siparisController dub=new siparisController();
		List<siparisModel> siparisler=dub.readingData();
%>

        <div class="alert alert-secondary mt-2" role="alert">
            <h4 id="list-item-4" class="ml-4 ">Siparisler</h4>
        </div>
        <hr>


        <div class="row" >

            <div class="col-1"></div>
            <div class="col-10">
                <table class="table table-hover px-5">
                    <thead>
                        <tr>
                            <th scope="col">Siparis Kodu</th>
                            <th scope="col">Siparis Tarihi</th>
                            <th scope="col">isleme Alinma</th>
                            <th scope="col">Hazirlanma</th>
                            <th scope="col">Kargolanma</th>
                            <th scope="col">Teslim</th>
                            <th scope="col">Odeme Tipi</th>
                            <th scope="col">Musteri Kodu</th>
                              
                        </tr>
                    </thead>
                    
                    	<%for(siparisModel siparis:siparisler){
                    		 %>
                    		<tbody>
                            <tr>
                                <th scope="row"><%= siparis.getSiparisKodu() %></th>
                                <td><%= siparis.getSiparisTarihi() %></td>
                                <td><%=siparis.getIsleme() %></td>
                                <td><%= siparis.getHazirlanma() %></td>
                                <td><%= siparis.getKargolanma() %></td>
                                <td><%= siparis.getTeslim() %></td>
                                <td><%= siparis.getOdemeTipi() %></td>
                                <td><%= siparis.getUyekullaniciAdi() %></td>
                            </tr>
                            
                        </tbody>
                        
                    	<% }%>
                    
                </table>
            </div>
        </div>
