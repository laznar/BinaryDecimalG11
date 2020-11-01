import 'package:flutter/material.dart';

class DecimaltoBinary extends StatefulWidget {
  @override
  _DecimaltoBinaryState createState() => _DecimaltoBinaryState();
}

class _DecimaltoBinaryState extends State<DecimaltoBinary> {
  @override
  Widget build(BuildContext context) {
    String _binary = "";
  String _decimal = "";
  String dec2bin(int decimal) {
    String bin = '';
    if(decimal==1){
      bin = "01";
    }else{
      while (decimal > 0) {
        bin = (decimal % 2).toString() + bin;
        decimal = (decimal / 2).floor();
      }
    }
    return bin;
  }

  void _onPressed(String val) {
    setState(() {
        _decimal = _decimal + val;
      });
      setState(() {
        _binary=dec2bin(int.parse(_decimal));
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
     child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Decimal -> Binary")
              ),
        Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_binary',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
            Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_decimal',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontSize: 35),
              )),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("1");
                  },
                  child: Text("1",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                  Spacer(),
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("2");
                  },
                  child: Text("2",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                      Spacer(),
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("3");
                  },
                  child: Text("3",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )))    
              ],)
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("4");
                  },
                  child: Text("4",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                  Spacer(),
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("5");
                  },
                  child: Text("5",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                      Spacer(),
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("6");
                  },
                  child: Text("6",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )))    
              ],)
            ),
          ),
            Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("7");
                  },
                  child: Text("7",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                  Spacer(),
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("8");
                  },
                  child: Text("8",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                      Spacer(),
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("9");
                  },
                  child: Text("9",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      )))    
              ],)
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   _onPressed("0");
                  },
                  child: Text("0",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
                      Spacer(),   
                   MaterialButton(
                  padding: const EdgeInsets.all(20.0),
                  color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                  onPressed: () {
                   setState(() {
                    _binary = "";
                    _decimal = "";
                  });
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
              ],)
            ),
          ),
          ]),
    );
  }
  }
}
