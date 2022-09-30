package com.example.helper;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.pdf.PdfWriter;

public class PDFGenerator {


	public void GenerateReport(HttpServletResponse response) throws DocumentException, IOException {
		Document document = new Document();
		
		PdfWriter.getInstance(document, response.getOutputStream());
		
		document.open();
		
		Font font = FontFactory.getFont(FontFactory.TIMES);
		Chunk c = new Chunk("test",font);
		document.add(c);
		
		document.close();
	}
}
