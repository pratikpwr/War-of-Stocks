import 'package:cards_of_stock/models/company_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StockCard extends StatelessWidget {
  final Company company;

  const StockCard({
    @required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.27,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(2, 3), blurRadius: 3)
            ]),
        child: Column(
          children: [
            Image.network(
              company.imageUrl,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.27,
              fit: BoxFit.fitWidth,
            ),
            FittedBox(
              child: Text(
                company.companyName,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            RichTextWidget(title: 'P/E Ratio', value: company.peRatio),
            RichTextWidget(
                title: 'Dividend Yield', value: company.dividendYield),
            RichTextWidget(title: 'Market Cap', value: company.marketCap),
            RichTextWidget(title: 'Profit Growth', value: company.profitGrowth),
            RichTextWidget(title: '25 week avg', value: company.weeks25)
          ],
        ));
  }
}

class RichTextWidget extends StatelessWidget {
  final title;
  final value;

  RichTextWidget({
    @required this.title,
    @required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: FittedBox(
        child: RichText(
          text: TextSpan(
              text: '$title: ',
              style: GoogleFonts.montserrat(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: value.toString(),
                    style: GoogleFonts.montserrat(color: Colors.grey))
              ]),
        ),
      ),
    );
  }
}

/*
Table(
                border: TableBorder.all(
                    color: Colors.black87, style: BorderStyle.none, width: 1),
                children: [
                  TableRow(children: [
                    TableCell(
                        child: FittedBox(
                            child: Text(
                      'P/E Ratio',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.black),
                    ))),
                    TableCell(child: Text(company.peRatio.toString())),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: FittedBox(
                            child: Text(
                      'Dividend Yield',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.black),
                    ))),
                    TableCell(child: Text(company.dividendYield.toString())),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: FittedBox(
                            child: Text(
                      'Market Cap',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.black),
                    ))),
                    TableCell(child: Text(company.marketCap.toString())),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: FittedBox(
                            child: Text(
                      'Profit Growth',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.black),
                    ))),
                    TableCell(child: Text(company.profitGrowth.toString())),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: FittedBox(
                            child: Text(
                      '25 weeks avg',
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.black),
                    ))),
                    TableCell(child: Text(company.weeks25.toString())),
                  ])
                ])
 */
