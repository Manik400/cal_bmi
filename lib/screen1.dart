import 'package:flutter/material.dart';
import 'widgets__.dart';

class screen extends StatelessWidget {
  screen({required this.bmrs , required this.rst});
  final String bmrs;
  final String rst;
  // final String
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABCD'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Your Result',
              style: kstyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: reuse(
              colour: inactcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    rst.toUpperCase(),
                    style: resultstyle,
                  ),
                  Text(
                    bmrs,
                    style: kbmist,
                  ),
                  // Text(
                  //   'YOU BMI IS LOW , EAT MORE',
                  //   textAlign: TextAlign.center,
                  //   style: kbmibo,
                  // ),
                ],
              ),
            ),
          ),
          btmbt(
            ontap: (){
              Navigator.pop(context);
            },
            buttontitle: 'Re - calculate',
          )
        ],
      ),
    );
  }
}
