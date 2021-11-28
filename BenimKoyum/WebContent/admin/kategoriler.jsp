<%@page import ="Controller.kategoriController,Model.kategoriModel,java.util.*"%>


<%
		kategoriController dba=new kategoriController();
		List<kategoriModel> kategoriler=dba.readingData();
%>


<div class="alert  alert-secondary mt-2 " role="alert">
            <h4 id="list-item-2" class="ml-4 ">Kategoriler</h4>
        </div>
        <hr>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-secondary ml-4 my-2" data-toggle="modal" data-target="#exampleModalLong2">
            Kategori Ekle
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
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
                                        <a href="Home.html"><img src="../img/gk.jpg" class="img6 trans1 b" alt=""></a>

                                    </div>


                                    <div style="margin-top:120px;" class="p-3 mb-3">
                                        <form class="needs-validation" action="kategoriEkle.jsp" novalidate>


                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom01" name="kategoriNumarasi" placeholder="Kategori numarasi" required>
                                                <div class="valid-feedback">
                                                    Kategori Numarasi Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom01" name="kategoriAdi" placeholder="Kategori Ad" required>
                                                <div class="valid-feedback">
                                                    Kategori Ad Giriniz
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
        <div class="row">
            <div class="col-2"></div>
            <div class="col-8">

                <table class="table table-hover px-5">
                    <thead>
                        <tr>
                            <th scope="col">Kategori Numarası</th>
                            <th scope="col">Kategori adi</th>
                            <th scope="col">islemler</th>
                            

                        </tr>
                    </thead>
                    <tbody>
                        		
                        		<%
                        					for(kategoriModel kategori:kategoriler){
                        						%>
                        						<tr>
                                                <th scope="row"><%=kategori.getKategoriId() %></th>
                                                <td><%=kategori.getKategoriAdi() %></td>
                                                <td><button type="button" class="btn btn-secondary " data-toggle="modal" data-target="#exampleModalLong2">
                                                        Guncelle
                                                    </button><a href="kategoriSil.jsp?<%=kategori.getKategoriId()%>"><button type="button" class="btn btn-danger ml-2">
                                            Sil
                                        </button></a></td>

                                            </tr>
                        				<%	}
                        		
                        		
                        		%>
                        		
                       
                    </tbody>
                </table>


            </div>
            <div class="col-2"></div>
        </div>


