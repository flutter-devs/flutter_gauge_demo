import 'package:flutter/material.dart';
import 'package:flutter_gauge/flutter_gauge.dart';


class FlutterGaugePage extends StatefulWidget {
  @override
  _FlutterGaugePageState createState() => _FlutterGaugePageState();
}

class _FlutterGaugePageState extends State<FlutterGaugePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Flutter Gauge Demo"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Center(
                      child: FlutterGauge(
                          handSize: 25,index: 40.0,
                          end: 100,number:
                          Number.endAndCenterAndStart,
                          circleColor: Color(0xFF47505F),
                          secondsMarker:
                          SecondsMarker.secondsAndMinute,
                          counterStyle: TextStyle(
                        color: Colors.black,fontSize: 20,)
                      ),
                    )
                ),
                Expanded(
                    child: FlutterGauge(
                        secondsMarker: SecondsMarker.none,
                        hand: Hand.short, number: Number.none,
                        index: 66.0,circleColor: Color(0xFF9DC1DC),
                        counterStyle: TextStyle(color: Colors.black,
                            fontSize: 25
                        ),
                        counterAlign: CounterAlign.center,
                        isDecimal: false
                    )),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlutterGauge(
                      handSize: 25,index: 70.0,end: 100,
                      number: Number.endAndCenterAndStart,
                      secondsMarker: SecondsMarker.secondsAndMinute
                      ,hand: Hand.short,
                      circleColor: Color(0xFF59EA50),
                      counterStyle: TextStyle(color:
                      Colors.black,fontSize: 20,)
                  ),
                ),
                Expanded(
                  child: FlutterGauge(
                      handSize: 25,index: 100.0,end: 500,
                      number: Number.endAndStart,
                      secondsMarker: SecondsMarker.minutes,
                      isCircle: false,
                      counterStyle: TextStyle(color:
                      Colors.black,fontSize: 20,)
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: FlutterGauge(
                      index: 50,width:280,counterStyle : TextStyle
                      (color: Colors.black,fontSize: 22,),
                      secondsMarker: SecondsMarker.secondsAndMinute,
                      number: Number.all, numberInAndOut:
                      NumberInAndOut.outside,
                    ),
                ),
              ],
            ),
            FlutterGauge(
                index: 80.0,width: 300,counterStyle
                :TextStyle(color: Colors.black,fontSize: 22,),
                circleColor: Color(0xFFFF4753),
                widthCircle: 10,secondsMarker:
                SecondsMarker.none,
                number: Number.all
            ),
          ],
        ),
      ),
    );
  }
}
