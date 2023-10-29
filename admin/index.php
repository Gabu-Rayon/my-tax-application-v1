<?php require_once('header.php'); ?>

<section class="content-header">
	<h1>Dashboard</h1>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_top_category");
$statement->execute();
$total_top_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_mid_category");
$statement->execute();
$total_mid_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_end_category");
$statement->execute();
$total_end_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_product");
$statement->execute();
$total_product = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_status='1'");
$statement->execute();
$total_customers = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_active='1'");
$statement->execute();
$total_subscriber = $statement->rowCount();


$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Completed'));
$total_order_completed = $statement->rowCount();


$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Pending'));
$total_order_pending = $statement->rowCount();
?>

<section class="content">
	<div class="row">
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-primary">
				<div class="inner">
					<h3><?php echo $total_product; ?></h3>

					<p>Products</p>
				</div>
				<div class="icon">
					<i class="ionicons ion-android-cart"></i>
				</div>

			</div>
		</div>
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-red">
				<div class="inner">
					<h3><?php echo $total_customers; ?></h3>

					<p>Active Users</p>
				</div>
				<div class="icon">
					<i class="ionicons ion-person-stalker"></i>
				</div>

			</div>
		</div>

		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-yellow">
				<div class="inner">
					<h3><?php echo $total_subscriber; ?></h3>

					<p>Subscriber</p>
				</div>
				<div class="icon">
					<i class="ionicons ion-person-add"></i>
				</div>

			</div>
		</div>

		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-olive">
				<div class="inner">
					<h3><?php echo $total_top_category; ?></h3>

					<p>Top Categories</p>
				</div>
				<div class="icon">
					<i class="ionicons ion-arrow-up-b"></i>
				</div>

			</div>
		</div>

		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-blue">
				<div class="inner">
					<h3><?php echo $total_mid_category; ?></h3>

					<p>Mid Categories</p>
				</div>
				<div class="icon">
					<i class="ionicons ion-android-menu"></i>
				</div>

			</div>
		</div>

		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-maroon">
				<div class="inner">
					<h3><?php echo $total_end_category; ?></h3>

					<p>End Categories</p>
				</div>
				<div class="icon">
					<i class="ionicons ion-arrow-down-b"></i>
				</div>

			</div>
		</div>

	</div>

</section>

<?php require_once('footer.php'); ?>