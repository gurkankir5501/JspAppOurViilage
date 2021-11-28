
<%@page import ="Controller.urunController,Model.urunModel,java.util.*,Controller.kategoriController,Model.kategoriModel"%>


<%
		urunController data=new urunController();
		List<urunModel> urunler=data.readingData();
%>


        <div class="alert alert-secondary mt-2" role="alert">
            <h4 id="list-item-3" class="ml-4 ">Urunler</h4>
        </div>
        <hr>

        <!-- Button trigger modal -->
        <button type="button" class="btn btn-secondary ml-4 my-2" data-toggle="modal" data-target="#exampleModalLong8">
            Urun Ekle
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalLong8" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Urun Bilgileri</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row " style="width: 100%">

                            <div class="col-12 bg-white py-3 my-3">

                                <div style="background-color: white">
                                    <div class="mb-5 order-bottom">
                                        <a href="adminpanel.jsp"><img src="../img/gk.jpg" class="img6 trans1 b" alt=""></a>

                                    </div>


                                    <div style="margin-top:120px;" class="p-3 mb-3">
                                        <form class="needs-validation " action="urunEkle.jsp"  novalidate>


                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom01" name="urunKodu" placeholder="Urun Kodu" required>
                                                <div class="valid-feedback">
                                                    Urun Kodu Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom01" name="urunAd" placeholder="Ad" required>
                                                <div class="valid-feedback">
                                                    Ad Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom02" name="urunDetay" placeholder="detay " required>
                                                <div class="valid-feedback">
                                                    Detay Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="validationCustomUsername" name="urunFiyat" aria-describedby="inputGroupPrepend" placeholder="fiyat" required>
                                                    <div class="invalid-feedback">
                                                        Fiyat
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group md mt-3">

                                                <input type="text" class="form-control" aria-describedby="inputGroupPrepend" name="urunFotograf" placeholder="adet" required>
                                                <div class="invalid-feedback">
                                                    fotograf
                                                </div>
                                            </div>


                                            <div class=" mt mt-3">
                                                <select class="custom-select" name="ozelKategori" id="validationCustom04" required>
                                                    <option selected disabled value="">ozel Kategori</option>
                                                    <option value="1">yeni urunler</option>
                                                    <option value="2">indirimdekiler</option>
                                                    <option value="3">cok satanlar</option>


                                                </select>
                                                <div class="invalid-feedback">
                                                    ozel kategori giriniz
                                                </div>
                                            </div>

										<%
										
											kategoriController ret=new kategoriController();
											List<kategoriModel> kt=ret.readingData();
											
										
										%>

                                            <div class=" mt mt-3">
                                                <select class="custom-select" name="kategori" id="validationCustom04" required>
                                                    <option selected disabled value="">kategori</option>
                                                    <%for(kategoriModel k:kt){
                                                    	
                                                    	%>
                                                    	<option value="<%=k.getKategoriId()%>"><%=k.getKategoriAdi() %></option>
                                                    <%}
                                                   
													%>
                                                </select>
                                                <div class="invalid-feedback">
                                                    kategori giriniz
                                                </div>
                                            </div>


                                            <button class="btn bg-secondary btn-lg btn-block mt-5 ml-1 mb-4" type="submit" style="color: white">Ekle</button>
                                        </form>


                                    </div>

                                </div>
                            </div>
                            <div class="col-4"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class=" row" >


            
            <div class="col-1"></div>
            <div class="col-10">
                <table class="table table-hover px-5">
                    <thead>
                        <tr>
                            <th scope="col">Urun Kodu</th>
                            <th scope="col">Urun Adi</th>
                            <th scope="col">Detay</th>
                            <th scope="col">Fiyat</th>
                            <th scope="col">Adet</th>
                            <th scope="col">Fotograf</th>
                            <th scope="col">Ozel Kategori</th>
                            <th scope="col">Kategori</th>
                            <th scope="col">islemler</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                       <%for(urunModel urun:urunler){
                    	    %>
                    	   
                    	   <tr>
                           <th scope="row"><%= urun.getUrunKodu() %></th>
                           <td><%= urun.getUrunAdi() %></td>
                           <td><%= urun.getUrunDetay() %></td>
                           <td><%= urun.getUrunFiyat() %></td>
                           <td><%= urun.getUrunAdet() %></td>
                           <td><%= urun.getFotograf() %></td>
                           <td><%= urun.getKategoriKodu() %></td>
                           <td><%= urun.getKategoriKodu() %></td>
                           <td><button type="button" class="btn btn-secondary " data-toggle="modal" data-target="#exampleModalLong8">
                                   Guncelle
                               </button><a href="urunSil.jsp?<%= urun.getUrunKodu() %>"><button type="button" class="btn btn-danger ml-2">
                                            Sil
                                        </button></a></td>
                       </tr>
                       <%}
                        %>
                    </tbody>
                </table>


            </div>
        </div>
