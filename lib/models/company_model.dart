import 'package:flutter/foundation.dart';

class Company {
  final String companyName;
  final String imageUrl;
  final double peRatio;
  final double dividendYield;
  final double marketCap;
  final double profitGrowth;
  final double weeks25;

  Company({
    @required this.companyName,
    @required this.imageUrl,
    @required this.peRatio,
    @required this.dividendYield,
    @required this.marketCap,
    @required this.profitGrowth,
    @required this.weeks25,
  });
}
