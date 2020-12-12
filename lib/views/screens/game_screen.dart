import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cards_of_stock/models/company_model.dart';
import 'package:cards_of_stock/views/widgets/stock_card.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final List<Company> companies = [
    Company(
        companyName: 'Reliance',
        imageUrl:
            'https://s3.ap-southeast-1.amazonaws.com/cdn.deccanchronicle.com/sites/default/files/Reliance-Industries-Logo_0.jpg',
        peRatio: 39.74,
        dividendYield: 100,
        marketCap: 1999.40,
        profitGrowth: 30,
        weeks25: 1200),
    Company(
        companyName: 'Tata Motors',
        imageUrl:
            'https://www.vrlife.news/wp-content/uploads/2016/04/logo_tata-motors.png',
        peRatio: 39.74,
        dividendYield: 100,
        marketCap: 1999.40,
        profitGrowth: 30,
        weeks25: 1200),
  ];

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/stocks.jpg',
                ),
                fit: BoxFit.cover)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Image.network(
                    'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png',
                    height: 48,
                    width: 48,
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      child: Text(
                        'You',
                        style: GoogleFonts.montserrat(color: Colors.white),
                      ))
                ],
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            StockCard(
              company: companies[0],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Text(
              'VS',
              style: GoogleFonts.montserrat(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            StockCard(
              company: companies[1],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Image.network(
                    'https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png',
                    height: 48,
                    width: 48,
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      child: Text(
                        'Opp',
                        style: GoogleFonts.montserrat(color: Colors.white),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
