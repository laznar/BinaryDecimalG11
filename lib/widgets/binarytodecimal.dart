import 'package:converter_g11/widgets/decimaltobinary.dart';
import 'package:flutter/material.dart';

class BinarytoDecimal extends StatefulWidget {
  @override
  _BinarytoDecimalState createState() => _BinarytoDecimalState();
}

class _BinarytoDecimalState extends State<BinarytoDecimal> {
  String _binary = "";
  String _decimal = "";
  String _textButton = "Binary -> Decimal";
  bool _state = true;

  void _onPressed(String value) {
    setState(() {
      _binary = _binary + '$value';
      _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    });
  }

  void _reset() {
    setState(() {
      _binary = "";
      _decimal = "";
    });
  }

  void _update() {
    setState(() {
      if (_state == true) {
        _textButton = "Binary -> Decimal";
        _state = false;
      } else {
        _state = true;
        _textButton = "Decimal->Binary";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
          Widget>[
        Container(
            alignment: Alignment.centerLeft,
            child: RaisedButton(
                child: Text('$_textButton'),
                onPressed: () {
                  _update();
                })),
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
        Text(
          '$_decimal',
          textAlign: TextAlign.right,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(int.parse("#FF5722".replaceAll('#', '0xff'))),
              fontSize: 35),
        ),
        Expanded(
          child: _state == false
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: MaterialButton(
                              minWidth: 300.0,
                              height: 320,
                              padding: const EdgeInsets.all(8.0),
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              child: Text("1",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                _onPressed("1");
                              },
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: MaterialButton(
                              minWidth: 300.0,
                              height: 320,
                              padding: const EdgeInsets.all(8.0),
                              color: Color(
                                  int.parse("#0069C0".replaceAll('#', '0xff'))),
                              child: Text("0",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                _onPressed("0");
                              },
                            ),
                          ),
                        ),
                      ),
                    ])
              : DecimaltoBinary(),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
                color: Color(int.parse("#0069C0".replaceAll('#', '0xff'))),
                onPressed: () {
                  _reset();
                },
                child: Text("Reset",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ))),
          ),
        ),
      ]),
    );
  }
}
