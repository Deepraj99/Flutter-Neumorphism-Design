import 'package:cp_booster/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'SoftBackButton.dart';
import 'BackendCode.dart';
import 'colors.dart';

class CalculationWidget extends StatefulWidget {
  final int buttonNumber;
  CalculationWidget({Key key, @required this.buttonNumber}) : super(key: key);
  @override
  _CalculationWidgetState createState() => _CalculationWidgetState();
}

class _CalculationWidgetState extends State<CalculationWidget> {
  final userInput = TextEditingController();
  String output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: CircularSoftButton(
                      icon: Icon(Icons.keyboard_backspace),
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                  ),
                  Text(
                    "Neumor ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "phism",
                    style: TextStyle(
                      color: Color(0xff5868E0),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.24,
                  )
                ],
              ),
              Container(
                color: white,
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.7,
                          width: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: kkboxShadow,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              output,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              maxLines: null,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 8)),
                        Container(
                          height: MediaQuery.of(context).size.width * 0.7,
                          width: MediaQuery.of(context).size.width * 1.0,
                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: kkboxShadow,
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            maxLines: null,
                            controller: userInput,
                            autocorrect: true,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15, 0, 0, 0),
                                border: InputBorder.none,
                                hintText: "Enter Text",
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        ButtonTheme(
                          height: MediaQuery.of(context).size.width * 0.15,
                          minWidth: MediaQuery.of(context).size.width * 1.0,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                output = userInput.text;
                                // output = buttonCall(
                                //     userInput.text, widget.buttonNumber);
                              });
                              // print(int.parse(userInput.text));
                              // print(isPrime(int.parse(userInput.text)));
                            },
                            color: white,
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            elevation: 8,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
