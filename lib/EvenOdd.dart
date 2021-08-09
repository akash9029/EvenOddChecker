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
  TextEditingController cntrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
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
                color: Colors.blue[100],
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
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          hintText: "Enter Number",
                          labelText: "Number",
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            int str1 = int.parse(cntrl.text);
                            if (str1 % 2 == 0) {
                              setState(() {
                                result = "$str1 is Even Number.";
                                cntrl.text = "";
                              });
                            } else {
                              setState(() {
                                result = "$str1 is Odd Number.";
                                cntrl.text = "";
                              });
                            }
                          },
                          child: Text("Click Me!")),
                      Text(
                        result,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
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
