import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'First Layout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.lightBlueAccent[100],
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                child: IconButton(
                  color: Colors.black,
                  padding: const EdgeInsets.all(15),
                  iconSize: 150,
                  icon: const Icon(Icons.insert_photo),
                  onPressed: () {

                  }),
                ),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        "Row child 1",
                      style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Text(
                        "Row child 2",
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    Text(
                        "Row child 3",
                        style:TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  "This is column",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: ()=> print("okay1"),
                    child: Text("Cancel"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    onPressed: ()=> print("okay2"),child: Text("Login"),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
