<%@page import ="Controller.yoneticiController,Model.yoneticiModel,java.util.*"%>


<%
		yoneticiController yoneticidbll=new yoneticiController();
		List<yoneticiModel> yoneticilerr=yoneticidbll.readingData();
%>


        <div class="alert alert-secondary mt-2" role="alert">
            <h4 id="list-item-5" class="ml-4 ">Yoneticiler</h4>
        </div>
        <hr>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-secondary ml-4 my-2" data-toggle="modal" data-target="#exampleModalLong45">
            Yonetici Ekle
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalLong45" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Yonetici Bilgileri</h5>
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
                                        <form class="needs-validation " action="yoneticiEkle.jsp" novalidate>


                                            <div class="md mt-3">

                                                <input type="text" class="form-control" name="kullaniciAdi" id="validationCustom01" placeholder="Kullanici Adi" required>
                                                <div class="valid-feedback">
                                                    Kullanici Adi Giriniz
                                                </div>
                                            </div>

                                            <div class="form-group md">

                                                <input type="password" class="form-control" name="sifre" aria-describedby="inputGroupPrepend" placeholder="Sifre" required>
                                                <div class="invalid-feedback">
                                                    Sifrenizi Giriniz
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

        <div class="row" >

            <div class="col-3"></div>
            <div class="col-7">

                <table class="table table-hover px-5">
                    <thead>
                        <tr>
                            <th scope="col">Kullanici Adi</th>
                            <th scope="col">Sifre</th>
                            <th scope="col">islemler</th>


                        </tr>
                    </thead>
                    <tbody>
                        
                        <%
                        			for(yoneticiModel yonetici:yoneticilerr){
                        				 %>
                        				
                        				
                        				<tr>
                            					<th scope="row"><%=yonetici.getKullaniciAdi() %></th>
                            					<td><%=yonetici.getSifre() %></td>
                            					<td style=""><button type="button" class="btn btn-secondary " data-toggle="modal" data-target="#exampleModalLong45">
                                   					 Guncelle
                                				</button><a href="yoneticiSil.jsp?<%=yonetici.getKullaniciAdi() %>"><button type="button" class="btn btn-danger ml-2">
                                            Sil
                                        </button></a></td>



                        </tr>
                        	<%		}                  
                        %>
                        
                        
                        
                    </tbody>
                </table>
            </div>


            <div class="col-2"></div>

        </div>