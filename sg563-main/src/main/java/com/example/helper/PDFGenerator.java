package com.example.helper;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.example.model.ScoreModel;
import com.example.model.ScoreSummary;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class PDFGenerator {

	public void GenerateReport(ScoreModel s, HttpServletResponse response) throws DocumentException, IOException {

		ScoreSummary summary = new ScoreSummary(s);

		Document document = new Document();

		PdfWriter.getInstance(document, response.getOutputStream());

		document.open();


		document.add(new Paragraph("Calculated on " + summary.getDate()));
		document.add(new Paragraph("Loan amount: £" + summary.getLoan()));
		document.add(new Paragraph("Score:" + summary.getScore()));
		document.add(new Paragraph("Odds of defaulting: 1:" + summary.getOdds()));
		document.add(new Paragraph());
		for (Map.Entry<String, String> x : summary.getScoreInput().entrySet()) {
			document.add(new Paragraph(x.getKey() + ": " + x.getValue()));
		}
		
		
		document.close();
	}
}
