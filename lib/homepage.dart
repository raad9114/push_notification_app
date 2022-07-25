import 'package:flutter/material.dart';
import 'dart:async';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  void initState(){
    super.initState();
    initPlatform();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //
        // ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Push Notification",
                style: TextStyle(
                fontSize: 30,
              ),)
            ],
          ),
        ),
      ),
      ),
    );
  }
  Future<void> initPlatform() async{
    await OneSignal.shared.setAppId("");
    await OneSignal.shared
    .getDeviceState().then((value) => {
      print(value!.userId)
    });

  }
}
