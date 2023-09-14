import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostGrowth extends StatefulWidget {
  const MostGrowth({super.key});

  @override
  State<MostGrowth> createState() => _MostGrowthState();
}

class _MostGrowthState extends State<MostGrowth> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.yellow,
      child: Center(
        child: Text(
          'Bike',
        ),
      ),
    );
  }
}
