import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MostDrop extends StatefulWidget {
  const MostDrop({super.key});

  @override
  State<MostDrop> createState() => _MostDropState();
}

class _MostDropState extends State<MostDrop> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.purple,
      child: Center(
        child: Text(
          'Bike',
        ),
      ),
    );
  }
}
