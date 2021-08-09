<?php
	include("claseFuncionario.php");

	$obj = new claseFuncionario();
	include("PDF.php");

	$cedula = $_REQUEST['ced'];
	$i = $obj->getFuncionario($cedula);

	$pdf = new PDF();
	$pdf->cPDF($pdf);
	
	$pdf->AliasNbPages();
	$pdf->AddPage();

	//
	$pdf->SetFont('Courier','B',12);

	$pdf->SetFillColor(230,230,250);
	$pdf->Cell(195.6,18,'DATOS DE FUNCIONARIO CON CEDULA '.$cedula,1,1,'C',true);
	//$pdf->SetDrawColor();
	$pdf->SetFillColor(176,224,230);
	//$pdf->Cell(10,6,'id',1,0,'C');
	//$pdf->SetFont('Courier','B',8)
	$pdf->Cell(195.6,18,'DATOS PERSONALES',1,1,'C',true);
	$pdf->SetFont('Courier','B',7);
	$pdf->Cell(40,16,'NOMBRE',1,0,'C',true);
	$pdf->Cell(30,16,'CEDULA',1,0,'C',true);
	$pdf->Cell(50,16,'PROVINCIA',1,0,'C',true);
	$pdf->Cell(35,16,'DISTRITO',1,0,'C',true);
	$pdf->Cell(40.6,16,'CORREGIMIENTO',1,1,'C',true);

	$pdf->Cell(40,16,$i['nombre'],1,0,'C',true);
	$pdf->Cell(30,16,$i['cedula'],1,0,'C',true);
	$pdf->Cell(50,16,$i['Provincia'],1,0,'C',true);
	$pdf->Cell(35,16,$i['Distrito'],1,0,'C',true);
	$pdf->Cell(40.6,16,$i['corregimiento'],1,1,'C',true);

	$pdf->SetFillColor(245,231,255 );
	$pdf->SetFont('Courier','B',12);
	$pdf->Cell(195.6,18,'DATOS DE UNIVERSIDAD',1,1,'C',true);

	$pdf->SetFillColor(206,231,255 );
	$pdf->SetFont('Courier','B',8);
	$pdf->Cell(87.20,16,'FACULTAD',1,0,'C',true);
	$pdf->Cell(88.32,16,'CARRERA',1,0,'C',true);
	$pdf->Cell(19.97,16,'ANIO_TITULO',1,1,'C',true);

	$pdf->SetFillColor(206,231,255 );
	$pdf->Cell(87.32,16,$i['facultad'],1,0,'C',true);
	$pdf->Cell(88.22,16,$i['carrera'],1,0,'C',true);
	$pdf->Cell(19.97,16,$i['anio'],1,1,'C',true);

	

	$pdf->Output();

	//mysqli_close($enlace);
?>