<%@page import ="Controller.uyeController,Model.uyeModel,java.util.*"%>


<%
		uyeController dboo=new uyeController();
		List<uyeModel> uyeler=dboo.readingData();
%>

<div class="alert alert-secondary " style="margin-top: 200px" role="alert">
            <h4 id="list-item-1" class="ml-4">Müsteriler</h4>
        </div>
        <hr>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-secondary ml-4 my-2" data-toggle="modal" data-target="#exampleModalLong">
            Musteri Ekle
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Musteri Bilgileri</h5>
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
                                        <form class="needs-validation " action="musteriEkle.jsp" novalidate>


                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom01" name="kullaniciAdi" placeholder="Kullanici Adi" required>
                                                <div class="valid-feedback">
                                                    Kullanici Adi Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom01" name="ad" placeholder="Ad" required>
                                                <div class="valid-feedback">
                                                    Ad Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <input type="text" class="form-control" id="validationCustom02" name="soyad" placeholder="Soyad " required>
                                                <div class="valid-feedback">
                                                    Soyad Giriniz
                                                </div>
                                            </div>
                                            <div class="md mt-3">

                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="validationCustomUsername" name="telefon" aria-describedby="inputGroupPrepend" placeholder="Telefon" required>
                                                    <div class="invalid-feedback">
                                                        Telefon
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group md mt-3">

                                                <input type="text" class="form-control" aria-describedby="inputGroupPrepend" name="mail" placeholder="Email" required>
                                                <div class="invalid-feedback">
                                                    Email Adresinizi Giriniz
                                                </div>
                                            </div>
                                            <div class="form-group md">

                                                <input type="password" class="form-control" aria-describedby="inputGroupPrepend" name="sifre" placeholder="Sifre" required>
                                                <div class="invalid-feedback">
                                                    Sifrenizi Giriniz
                                                </div>
                                            </div>

                                            <div class=" mt mt-3">
                                                <select class="custom-select" name="sehir" id="validationCustom04" required>
                                                    <option selected disabled value="">Sehir</option>
                                                    <option>Samsun</option>
                                                    <option>istanbul</option>
                                                    <option>izmir</option>
                                                    <option>ankara</option>
                                                </select>
                                                <div class="invalid-feedback">
                                                    Sehir giriniz
                                                </div>
                                            </div>

                                            <div class=" mt mt-3">
                                                <select class="custom-select" name="ilce" id="validationCustom04" required>
                                                    <option selected disabled value="">ilce</option>
                                                    <option>Atakum</option>
                                                    <option>ilkadim</option>
                                                    <option>Canik</option>
                                                </select>
                                                <div class="invalid-feedback">
                                                    ilce giriniz
                                                </div>
                                            </div>
                                            <div class="form-group md mt-3">

                                                <input type="text" class="form-control" name="adres" aria-describedby="inputGroupPrepend" placeholder="Adres" required>
                                                <div class="invalid-feedback">
                                                    Adres Giriniz
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
        
        
        
        <div class=" row mt-2" >




            <div class="col-12">



                <table class="table table-hover px-5">
                    <thead>
                        <tr>
                            <th scope="col">kullanici Adi</th>
                            <th scope="col">Adi</th>
                            <th scope="col">Soyadi</th>
                            <th scope="col">Telefon</th>
                            <th scope="col">Email</th>
                            <th scope="col">Sifre</th>
                            <th scope="col">Sehir</th>
                            <th scope="col">ilce</th>
                            <th scope="col">Adres</th>
                            <th scope="col">islemler</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        		for(uyeModel uye:uyeler){
                        			%>
                        			<tr>
                                    <th scope="row"><%=uye.getKullaniciAdi() %></th>
                                    <td ><%=uye.getAd() %></td>
                                    <td><%=uye.getSoyad() %></td>
                                    <td><%=uye.getTelefon() %></td>
                                    <td><%=uye.geteMail() %></td>
                                    <td><%=uye.getSifre() %></td>
                                    <td><%=uye.getSehir() %></td>
                                    <td><%=uye.getIlce() %></td>
                                    <td><%=uye.getAdres() %></td>
                                    <td><button type="button" class="btn btn-secondary " data-toggle="modal" data-target="#exampleModalLong">
                                            Guncelle
                                        </button><a href="musteriSil.jsp?<%=uye.getKullaniciAdi()%>"><button type="button" class="btn btn-danger ml-2">
                                            Sil
                                        </button></a></td>


                                </tr>
                        	<%	}
                        %>
                        
                    </tbody>
                </table>




            </div>
        </div>
