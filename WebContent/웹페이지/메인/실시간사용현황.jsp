<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>������</title>

    <!-- Custom fonts for this template -->
    <link href="css1/all.min.css" rel="stylesheet" type="text/css">
    
    
    
    
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css1/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="css1/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="������������.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">������ </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="������������.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->

            <!-- Nav Item - Pages Collapse Menu -->
           

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
           
            <!-- Nav Item - Charts -->

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="����.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>����</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="��ǰ.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>��ǰ</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="���ǰԽ���.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>���ǰԽ���</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="�ǽð������Ȳ.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>�ǽð������Ȳ</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                  

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                       

                      

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" onclick="location.href='����������.jsp'">�α׾ƿ�</span>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Seung Jin</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                         
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">�ǽð������Ȳ</h1>
                  
                    

                </div>
                <!-- /.container-fluid -->
<!-- ������ ǥ���� div �Դϴ� -->
<div id="map" style="width:90%;height:800px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a3c4576c7ad8d640fd976748c9403bac"></script>

<p>
<button onclick="panTo()">���� ��ġ</button> 
<span id="maplevel"></span>
<p><em>������ Ŭ�����ּ���!</em></p> 
<p id="result"></p>


</p>
<p>
    
</p>


<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
mapOption = { 
    center: new kakao.maps.LatLng(37.52911047951452 , 126.92731169545374), // ������ �߽���ǥ
    level: 5 // ������ Ȯ�� ����
};

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

//�Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
var mapTypeControl = new kakao.maps.MapTypeControl();

//������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
//kakao.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//���� Ȯ�� ��Ҹ� ������ �� �ִ�  �� ��Ʈ���� �����մϴ�
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

function panTo() {
    // �̵��� ���� �浵 ��ġ�� �����մϴ� 
    var moveLatLon = new kakao.maps.LatLng( 37.52911047951452 , 126.92731169545374);
    
    // ���� �߽��� �ε巴�� �̵���ŵ�ϴ�
    // ���� �̵��� �Ÿ��� ���� ȭ�麸�� ũ�� �ε巯�� ȿ�� ���� �̵��մϴ�
    map.panTo(moveLatLon);            
}        

//������ Ŭ�� �̺�Ʈ�� ����մϴ�
//������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
 
 // Ŭ���� ����, �浵 ������ �����ɴϴ� 
 var latlng = mouseEvent.latLng;
 
 var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
 message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
 
 var resultDiv = document.getElementById('result'); 
 resultDiv.innerHTML = message;
 
});
//��Ŀ�� ǥ�õ� ��ġ�Դϴ� 
var positions = [
    {
        title: 'īī��', 
        latlng: new kakao.maps.LatLng(37.52626354904062, 126.93547107572559)
    },
    {
        title: '���¿���', 
        latlng: new kakao.maps.LatLng( 37.52717782363525 ,126.93502907877193)
    },
    {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.5253408409012 , 126.93698778361603)
    },
    {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.53049905313209, 126.92900738241023 )
    },
    {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.532243765692826,126.92382399621539 )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng( 37.52701744767728 , 126.9230373984128 )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.525610480618475, 126.92091203286593  )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.52660288380495 ,  126.92287944267787)
    },
    {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.52688074742106 ,126.9354931701179 )
    },
    
    {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.5346865116775 , 126.91232628969018 )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.53396455947516 , 126.9107884192456 )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.53371935059973 , 126.92069981787101)
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.52708977779998 , 126.92342196772715 )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng(37.5307333812822 , 126.92912029629905 )
    }, {
        title: '�Թ�', 
        latlng: new kakao.maps.LatLng( 37.53112824525995 , 126.9265404086126 )
    },
    
    {
        title: '�ٸ�����',
        latlng: new kakao.maps.LatLng(37.52676281112251, 126.93403389478487)
    }
    
];
//��Ŀ �̹����� �̹��� �ּ��Դϴ�
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // ��Ŀ �̹����� �����մϴ�    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // ��Ŀ�� �����մϴ�
    var marker = new kakao.maps.Marker({
        map: map, // ��Ŀ�� ǥ���� ����
        position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
        title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
        image : markerImage // ��Ŀ �̹��� 
    });
}

// ��Ŀ�� �����մϴ�
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// ��Ŀ�� ���� ���� ǥ�õǵ��� �����մϴ�
marker.setMap(map);

// �Ʒ� �ڵ�� ���� ���� ��Ŀ�� �����ϴ� �ڵ��Դϴ�
// marker.setMap(null);    
</script>








            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">��</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="����������.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="js1/jquery.min.js"></script>
    <script src="js1/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="js1/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js1/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="js1/jquery.dataTables.min.js"></script>
    <script src="js1/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js1/demo/datatables-demo.js"></script>

</body>

</html>