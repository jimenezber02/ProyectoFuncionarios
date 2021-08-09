<?php
	include("claseFuncionario.php");
	$obj = new claseFuncionario();



	include("PDF.php");

	$anio=$_REQUEST['anio'];
	$func['funcionarios'] = $obj->getFuncionariosAnio($anio);

	$pdf=new PDF();
	$pdf->cPDF($pdf);
	
	$pdf->AliasNbPages();
	$pdf->AddPage();

	//
	$pdf->SetFont('Courier','B',12);

	$pdf->SetFillColor(230,230,250);
	$pdf->Cell(195.6,18,'DATOS DE FUNCIONARIO ANIO '.$anio,1,1,'C',true);
	//
	$pdf->SetFont('Courier','B',12);

	$pdf->SetFillColor(230,230,250);
	//$pdf->SetDrawColor();
	$pdf->SetFillColor(176,224,230);
	//$pdf->Cell(10,6,'id',1,0,'C');
	$pdf->SetFont('Courier','B',7);
	$pdf->Cell(40,16,'NOMBRE',1,0,'C',true);
	$pdf->Cell(25,16,'CEDULA',1,0,'C',true);
	$pdf->Cell(70,16,'FACULTAD',1,0,'C',true);
	$pdf->Cell(60.6,16,'CARRERA',1,1,'C',true);

	$pdf->SetFillColor(206,231,255 );

	foreach ($func['funcionarios'] as $key => $i) 
	{
		$pdf->SetFont('Courier','B',7);
		$pdf->Cell(40,16,$i['nombre'],1,0,'C',true);
		$pdf->Cell(25,16,$i['cedula'],1,0,'C',true);
		$pdf->Cell(70,16,$i['facultad'],1,0,'C',true);
		$pdf->Cell(60.6,16,$i['carrera'],1,1,'C',true);
	}

	$pdf->Output();
?>