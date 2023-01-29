import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  String cname = "Back This number";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Titile", style: TextStyle(color: Colors.red, fontSize: 30),),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 20,),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            setState(() {
              cname = "Back This number";
              count--;
            });
          },
          child: Text("$cname : $count", style: TextStyle(fontSize: 30),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
            cname = "count";
          });
        },
      ),
    );
  }
}
