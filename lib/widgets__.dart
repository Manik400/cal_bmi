import 'package:flutter/material.dart';
// import 'screen1.dart';
const inactcolor = Color(0xFF1D1E33);
const actcolor = Color(0xFF111328);

class btmbt extends StatelessWidget {
  btmbt({required this.ontap , required this.buttontitle});
  final void Function() ontap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: const Color(0xFFE30D24),
        margin: EdgeInsets.only(top: 05.0),
        width: double.infinity,
        height: 40.0,
        child: Center(child: Text(buttontitle, style: TextStyle(color: Colors.white, ),)),
      ),
    );
  }
}

class RiB extends StatelessWidget {
  RiB({required this.icon, required this.onpp});
  final IconData icon;
  final void Function() onpp;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpp,
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}

class iconcontent extends StatelessWidget {
  iconcontent({required this.ic, required this.st});
  final IconData ic;
  final String st;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            ic,
            size: 80.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          st,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class reuse extends StatelessWidget {
  reuse({required this.colour , required this.cardchild});
  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardchild,
    );
  }
}

const kstyle= TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
    color: Colors.white
);

const resultstyle = TextStyle(
  color: Color(0xFF5DD043),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kbmist = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kbmibo = TextStyle(
  fontSize: 22.0,
  color: Colors.white,
);