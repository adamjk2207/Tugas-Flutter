import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 105, 180, 242),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/adam.jpg'),
              radius: 140,
            ),
            SizedBox(height: 20,),
            myCard(
              title: Text(
                '\t\tAdam J Katuuk',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.w700,
                  ),
              ),
              icon: Icon(
                Icons.person,
                size: 30.0,
                color: Colors.teal,
              ),
            ),

            myCard(
              title: Text(
                '\t\tFlutter Developer',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.w700,
                  ),
              ),
              icon: Icon(
                Icons.description,
                size: 30.0,
                color: Colors.teal,
              ),
            ),

            myCard(
              title: Text(
                '\t\t085894733002',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.w700,
                  ),
              ),
              icon: Icon(
                Icons.call,
                size: 30.0,
                color: Colors.teal,
              ),
            ),
            myCard(
              title: Text(
                '\t\tadamjk2207@gmail.com',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.w700,
                  ),
              ),
              icon: Icon(
                Icons.email,
                size: 30.0,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class myCard extends StatelessWidget{
  final Widget title;
  final Widget icon;
  myCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon, title,
            ],
          )
        ),
      ),
    );
  }
}