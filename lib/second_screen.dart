
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var userName = '';
  var mobileNo = '';

  @override
  void initState(){
    getAllData();
    super.initState();
  }
  getAllData() async{
    final prefs = await SharedPreferences.getInstance();
    userName = prefs.getString('username')?? '';
    mobileNo = prefs.getString('mobileNo')?? '';
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName, style: TextStyle(fontSize: 20),),
            Text(mobileNo, style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
