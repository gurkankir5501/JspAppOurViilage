<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Siparisler</title>

    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="../css/Urunler.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>

	<%@ include file="Header.jsp" %>

    <div class="row" style="margin-top:200px;">

			<%@ include file="HesapAyarlari.jsp" %>
        
        <div class="col-8 ">


            <div class="accordion" id="accordionExample">
                <div class="card " style="width: 90%">
                    <div class="card-header" id="headingOne">

                        <div class="row">
                            <div class="col-4"><b>Siparis Numarasi :</b><span> @numara</span> <br>
                                <b>Siparis Tarihi :</b><span> @tarih</span></div>
                            <div class="col-4">
                                <div class="progress">
                                    <div class="progress bg-success progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>
                                </div><br>
                                <b class="float-left text-success">Teslim Edildi</b>
                            </div>
                            <div class="col-4">
                                <h2 class=" mt-3 float-right">
                                    <button class="btn btn-link " style="text-decoration: none" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <img src="../img/aasdf.png" style="width:25px" class="fg fk" alt="">
                                    </button>
                                </h2>
                            </div>
                        </div>

                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">
                            <div class="row">

                                <div class="col-5 bg-light">
                                    <a href="" class="ab">
                                        <div class="media ml-2">
                                            <img src="../img/artvin-kestane-bali-400-gr-bal-pekmez-toprak-dogal-karadeniz-137-60-K.jpg" style="width: 70px;height: auto" class="mr-1 mt-2" alt="...">
                                            <div class="media-body ml-5 p-2 py-3">
                                                <h6 class="text-dark">@Urun Kodu</h6>
                                                <h5 class="mt-0 text-dark">@Urun ismi</h5>
                                                <span class="border-bottom text-success" style="font-size: 25px;">@300 <img src="../img/343-512.webp" style="height: 15px" alt=""></span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-7">
                                    <div class="progress ">
                                        <div class="progress-bar bg-danger" role="progressbar" style="width: 18% " aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Isleme Alindi</div>
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">Hazirlandi</div>
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 27%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Kargoya Verildi</div>
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 33%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">Teslim Edildi</div>
                                    </div>
      
                               </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>


        <div class="col-2 "></div>

    </div>

<%@ include file="Footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>