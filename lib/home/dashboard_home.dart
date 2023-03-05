import 'package:flutter/material.dart';
import 'package:project/home/simple_radial_gauge_widget.dart';

class DashboardHome extends StatefulWidget {
  static const String routName = 'home';

  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<DashboardHome> {
  double money = 14900;
  String state1 = 'Booked';
  String state2 = 'Busy';
  String state3 = 'Free';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Smart Barking Dashboard',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MySimpleRadialGuage(
                  actualValue: 1,
                  gaugeColor: Colors.blue,
                  mytitle: "Empty Parking Spaces"),
              MySimpleRadialGuage(
                  actualValue: 3,
                  gaugeColor: Colors.red,
                  mytitle: "Busy Parking Spaces"),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: Colors.blueGrey,
                  //child: Text('hello'),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.money,
                        color: Colors.white,
                        size: 20,
                      ),
                      //SizedBox(height: 4,),

                      Text(
                        "$money LE",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),

                      //SizedBox(height: 4,),

                      Text(
                        "Total Earning",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(120.0),
              border: TableBorder.all(
                  color: Colors.black,
                  //style: BorderStyle.solid,
                  width: 1),
              children: [
                TableRow(children: [
                  Column(children: [
                    Text('Parking Slot Number',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Parking Slot Status',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold))
                  ]),
                  Column(children: [
                    Text('Actions',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold))
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('1')]),
                  Column(children: [
                    Text(state1,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300))
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.car_repair_rounded,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.car_repair_rounded,
                      color: Colors.red,
                      size: 35,
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('2')]),
                  Column(children: [
                    Text(state3,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300))
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.car_repair_rounded,
                        color: Colors.green, size: 35),
                    Icon(
                      Icons.car_repair_rounded,
                      color: Colors.red,
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('3')]),
                  Column(children: [
                    Text(state2,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300))
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.car_repair_rounded,
                      color: Colors.green,
                    ),
                    Icon(Icons.car_repair_rounded, color: Colors.red, size: 35)
                  ]),
                ]),
                TableRow(children: [
                  Column(children: [Text('4')]),
                  Column(children: [
                    Text(state1,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300))
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(
                      Icons.car_repair_rounded,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.car_repair_rounded,
                      color: Colors.red,
                      size: 35,
                    )
                  ]),
                ]),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
