<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>adminPaneli</title>
    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

</head>

<body>

    <div class="nava fx" style="width: 100%">
        <nav class="navbar navbar-light ml">

            <form class="form-inline yer1">
                <input class="form-control mr-sm-2 opak1" id="font1" style="width: 600px;height: 50px" type="search" placeholder="Aradiginiz urunu giriniz" aria-label="Search">
                <button class="btn btn-outline-dark ml-3 text-monospace" type="submit">Ara</button>
            </form>

            <ul class="nav justify-content-end mt-3 mr-5 " style="margin-left: 200px;">
                <li class="nav-item hover1 ">

                    <a class="nav-link text-dark " href="adminCikis.jsp"><img src="../img/users.jpg" class="ml-3 img1" alt=""><br>Cikis Yap</a>
                </li>


            </ul>
        </nav>

        <div class="alert  bg-dark opak2 fx " style="width:100%;" role="alert">
            <ul class="mb-4 ml-5 ul1">

                <div id="list-example">
                    <li class="li1"><a href="#list-item-1" class="aa ab" id="asd">Musteriler</a></li>
                    <li class="li1"><a href="#list-item-2" class="aa ab">Kategoriler</a></li>
                    <li class="li1"><a href="#list-item-3" class="aa ab">Urunler</a></li>
                    <li class="li1"><a href="#list-item-4" class="aa ab">Siparisler</a></li>
                    <li class="li1"><a href="#list-item-5" class="aa ab">Yoneticiler</a></li>
                </div>

            </ul>
            <a href="Home.html"><img src="../img/gk.jpg" class="img2 trans1" alt=""></a>
        </div>
    </div>






    <div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example mt-3">



        <%@ include file="musteriler.jsp" %>
        
		<%@ include file="kategoriler.jsp" %>

    	<%@ include file="aUrun.jsp" %>
	
    	<%@ include file="aSiparisler.jsp" %>

		<%@ include file="yoneticiler.jsp" %>


        



 </div>













        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>
