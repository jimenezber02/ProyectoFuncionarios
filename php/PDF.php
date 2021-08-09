<?php

	define('FPDF_FONTPATH','fpdf181/font/');
			require("fpdf181/fpdf.php");

	class PDF extends FPDF
	{
		function cPDF($pdf)
		{
			$pdf=new FPDF('P','mm','A3');

			return($pdf);
		}
		function Header()
		{
			$this->Image('logo.gif',92,8,20);
			$this->Ln(19);
			$this->SetFont('Courier','B',12);
			$this->SetFillColor(230,230,250);
			//$this->Cell(188.6,14,'REPORTE DE FACULTAD',1,1,'C',true);
			//$this->Ln(7);
		}
		function Footer()
		{
			$this->SetY(-15);
			$this->SetFont('Arial','I', 8);
			$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C' );
			$this->Cell(0,10, 'Bernabe JC .',0,0,'R' );
		}
	}
?>