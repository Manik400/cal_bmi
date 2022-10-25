// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets__.dart';
import 'screen1.dart';
import 'calc.dart';
void main() => runApp(BMICalculator());

enum gnd { male,female }

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          accentColor: Colors.purple,
          textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Color(0xFFFFFFFF),
              ))),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  gnd gn;
  int height = 180;
  int weit = 80;
  int ag = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gn = gnd.male;
                      });
                    },
                    child: reuse(
                      colour: gn == gnd.male ? actcolor : inactcolor,
                      cardchild: iconcontent(
                        ic: FontAwesomeIcons.mars,
                        st: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gn = gnd.female;
                      });
                    },
                    child: reuse(
                      colour: gn == gnd.female ? actcolor : inactcolor,
                      cardchild:
                      iconcontent(ic: FontAwesomeIcons.venus, st: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: reuse(
                colour: inactcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xF1EB1555),
                        overlayColor: Color(0x40EB1555),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        max: 220,
                        min: 120,
                        inactiveColor: Colors.black12,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                        // onChanged: onChanged
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reuse(
                    colour: inactcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Color(0xFF8D8E98),
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          weit.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 50.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RiB(
                              icon: FontAwesomeIcons.minus,
                              onpp: () {
                                setState(() {
                                  weit--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RiB(
                              icon: FontAwesomeIcons.plus,
                              onpp: () {
                                setState(() {
                                  weit++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: reuse(
                      colour: inactcolor,
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            ag.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 50.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RiB(icon: FontAwesomeIcons.minus, onpp: (){
                                setState(() {
                                  ag--;
                                });
                              }),
                              SizedBox(width: 10.0,),
                              RiB(icon: FontAwesomeIcons.plus, onpp: (){
                                setState(() {
                                  ag++;
                                });
                              })
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          btmbt(
            buttontitle: 'calculate',
            ontap: (){

              Caal cl=Caal(hght: height, wght: weit);

              Navigator.push(context, MaterialPageRoute(builder: (context)=>screen(
                bmrs: cl.ccll(),
                rst:  cl.gtrslt(),
              )));
            },
          )
        ],
      ),
    );
  }
}

