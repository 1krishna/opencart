<!doctype html>
<html class="fixed">

<head>
	<?php
	include_once 'includes/head.php';

	?>


	<!-- Web Fonts  -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

	<!-- Vendor CSS -->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="vendor/animate/animate.css">
	<link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="vendor/font-awesome/css/fontawesome-all.min.css" />
	<link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.css" />
	<link rel="stylesheet" href="vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" />

	<!-- Specific Page Vendor CSS -->
	<link rel="stylesheet" href="vendor/jquery-ui/jquery-ui.css" />
	<link rel="stylesheet" href="vendor/jquery-ui/jquery-ui.theme.css" />
	<link rel="stylesheet" href="vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
	<link rel="stylesheet" href="vendor/morris/morris.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" href="css/theme.css" />

	<!-- Skin CSS -->
	<link rel="stylesheet" href="css/skins/default.css" />

	<!-- Theme Custom CSS -->
	<link rel="stylesheet" href="css/custom.css">

	<!-- Head Libs -->
	<script src="vendor/modernizr/modernizr.js"></script>

</head>

<body>
	<section class="body">

		<!-- start: header -->
		<?php include_once 'includes/header.php'; ?>
		<!-- end: header -->

		<div class="inner-wrapper">
			<!-- start: sidebar -->
			<aside id="sidebar-left" class="sidebar-left">

				<div class="sidebar-header">
					<div class="sidebar-title">
						Navigation
					</div>
					<div class="sidebar-toggle d-none d-md-block" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
						<i class="fas fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>

				<?php include 'includes/nav-bar.php'; ?>

			</aside>
			<!-- end: sidebar -->

			<section role="main" class="content-body">
				<header class="page-header">
					<h2>Farmers</h2>
				</header>

				<!-- start: page -->
				<div class="row">
					<div class="col">
						<section class="card">
							<header class="card-header">
								<h2 class="card-title">View Products</h2>
							</header>
							<div class="card-body">
								<table class="table table-bordered table-striped mb-0" id="datatable-default">
									<thead>
										<tr>
											<th>Product Name</th>
											<th>Price</th>
											<th>Update</th>
											<th>Delete</th>
											<th>Sold Out</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$product = "SELECT * FROM oc_product op,oc_product_description opd WHERE op.phnum='" . $_SESSION['farmer_num'] . "' and op.product_id=opd.product_id";
										echo "<script>alert($product)</script>";
										$product = mysqli_query($conn, $product);
										while ($pro_row = mysqli_fetch_assoc($product)) {
										?>
											<tr>
												<td><?php echo $pro_row['name']; ?></td>
												<td><?php echo 'Rs. ' . $pro_row['price'] . '/-'; ?></td>
												<?php 
													if($pro_row['quantity']==1){
												?>
												<td>
													<form action="pro-add.php" method='post'>
														
														<input type="hidden" value="<?php echo $pro_row['product_id']; ?>" name='product_id'>
														<button type='submit' class="btn btn-primary">Update</button>
													</form>
												</td>
												<td>
													<button type='button' class="btn btn-primary" onclick="del(<?php echo $pro_row['product_id']; ?>)">Delete</button>
												</td>
												<td><button type='button' class="btn btn-primary" onclick="sold(<?php echo $pro_row['product_id']; ?>)">Sold</button></td>
												<?php } else if($pro_row['quantity']==0){
												?>
												<td colspan="3" align="center"> SOLD OUT </td>
												<?php } ?>
											</tr>
										<?php } ?>
										<input type="hidden" value="<?php if (isset($_SESSION['farmer_num'])) {
																	echo $_SESSION['farmer_num'];
																} ?>" id='number'>
									</tbody>
								</table>
							</div>
						</section>
					</div>
				</div>
				<!-- end: page -->
			</section>
		</div>
	</section>

	<!-- Vendor -->
	<script src="vendor/jquery/jquery.js"></script>
	<script src="vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
	<script src="vendor/popper/umd/popper.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.js"></script>
	<script src="vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="vendor/common/common.js"></script>
	<script src="vendor/nanoscroller/nanoscroller.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.js"></script>
	<script src="vendor/jquery-placeholder/jquery-placeholder.js"></script>

	<!-- Specific Page Vendor -->
	<script src="vendor/jquery-ui/jquery-ui.js"></script>
	<script src="vendor/jqueryui-touch-punch/jqueryui-touch-punch.js"></script>
	<script src="vendor/jquery-appear/jquery-appear.js"></script>
	<script src="vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
	<script src="vendor/jquery.easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="vendor/flot/jquery.flot.js"></script>
	<script src="vendor/flot.tooltip/flot.tooltip.js"></script>
	<script src="vendor/flot/jquery.flot.pie.js"></script>
	<script src="vendor/flot/jquery.flot.categories.js"></script>
	<script src="vendor/flot/jquery.flot.resize.js"></script>
	<script src="vendor/jquery-sparkline/jquery-sparkline.js"></script>
	<script src="vendor/raphael/raphael.js"></script>
	<script src="vendor/morris/morris.js"></script>
	<script src="vendor/gauge/gauge.js"></script>
	<script src="vendor/snap.svg/snap.svg.js"></script>
	<script src="vendor/liquid-meter/liquid.meter.js"></script>
	<script src="vendor/jqvmap/jquery.vmap.js"></script>
	<script src="vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
	<script src="vendor/jqvmap/maps/jquery.vmap.world.js"></script>
	<script src="vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
	<script src="vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
	<script src="vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
	<script src="vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
	<script src="vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
	<script src="vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="js/theme.js"></script>

	<!-- Theme Custom -->
	<script src="js/custom.js"></script>

	<!-- datatable js -->
	<script src="vendor/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/media/js/dataTables.bootstrap4.min.js"></script>
	<script src="js/examples/examples.datatables.default.js"></script>
	<script src="js/examples/examples.datatables.row.with.details.js"></script>
	<script src="js/examples/examples.datatables.tabletools.js"></script>

	<!-- Theme Initialization Files -->
	<script src="js/theme.init.js"></script>

	<!-- Examples -->
	<script src="js/examples/examples.dashboard.js"></script>
	<script>
		function del(id) {
			var number = $('#number').val();
			if (confirm("Confirm to Delete")) {
				$.ajax({
					url: 'queries/product.php',
					dataType: 'text',
					type: 'POST',
					data: {
						product_id: id,
						number:number,
						product_del: ''
					},
					success: function(data) {
						alert(data);
						window.location = "pro_view.php";
					},
					failure: function(data) {
						alert("Problem While Deleting.");
					}
				});
			}
		}

		function sold(id) {
			if (confirm("Confirm That The Product Has Been Sold")) {
				$.ajax({
					url: 'queries/product.php',
					dataType: 'text',
					type: 'POST',
					data: {
						product_id: id,
						product_sold: ''
					},
					success: function(data) {
						alert(data);
						window.location = "pro_view.php";
					},
					failure: function(data) {
						alert("Problem While Deleting.");
					}
				});
			}
		}
	</script>
</body>

</html>