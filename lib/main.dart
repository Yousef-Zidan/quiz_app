import 'package:flutter/material.dart';
import 'package:quiz_app/firstPage.dart';
import 'package:quiz_app/vars&funs.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bodyColor,

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), // Customize the height of the AppBar
          child: AppBar(
            backgroundColor: barColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30), // Add a curved design to the AppBar
              ),
            ),
            leading: const Icon(Icons.question_mark), // Add an icon to the left of the AppBar
            title: const Text('Quiz App'),
            centerTitle: true,
          ),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Quiz App You will answer some questions about Flutter lets start 🤩',
                      style: TextStyle(
                        fontSize: 18, // Decrease the font size
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned.fill(
                            child: Image.asset("assets/logo.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      decoration: InputDecoration(
                        // Change the bottom border on focus
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: orangeOne,
                            )
                          ),

                        hintText: 'Enter your name : ',
                        hintStyle: TextStyle(
                          color: fieldColor,
                          fontSize: 18,
                        ),
                      ),
                      onChanged: (value) {
                        name = value;
                      },
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        if(name == ''){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('You must Enter your name', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                content: const Text("You don't want us to know name : )", style: TextStyle(color: Colors.white),),
                                
                                backgroundColor: barColor,

                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      // Close the dialog
                                      Navigator.of(context).pop();
                                    },child: Text('Close', style: TextStyle(color: orangeOne, fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                        else{
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => QuizPage())
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(orangeOne),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}