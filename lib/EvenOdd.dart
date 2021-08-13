import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EvenOdd extends StatefulWidget {
  const EvenOdd({Key? key}) : super(key: key);

  @override
  _EvenOddState createState() => _EvenOddState();
}

class _EvenOddState extends State<EvenOdd> {
  String str = "";
  String result = "";
  bool col = true;
  TextEditingController cntrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: Text("Even Odd Finder"),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              width: 300,
              height: 500,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green[50],
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        controller: cntrl,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Enter Number",
                          labelText: "Number",
                        ),
                      ),
                      Text(
                        result,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: col ? Colors.green : Colors.red),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.only(
                                top: 15, left: 25, right: 25, bottom: 15))),
                        onPressed: () {
                          int str1 = int.parse(cntrl.text);
                          if (str1 % 2 == 0) {
                            setState(() {
                              result = "$str1 is Even Number.";
                              cntrl.text = "";
                              col = true;
                            });
                          } else {
                            setState(() {
                              result = "$str1 is Odd Number.";
                              cntrl.text = "";
                              col = false;
                            });
                          }
                        },
                        child: Text(
                          "Submit !",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
