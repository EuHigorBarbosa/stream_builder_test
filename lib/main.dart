import 'package:flutter/material.dart';

import 'pages/page_aa.dart';
import 'pages/page_bb.dart';
import 'pages/page_cc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/pageA':(context)=> PageAA(),
               '/pageB':(context)=> PageBB(),
               '/pageC':(context)=> PageCC()
                },
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: PageAA(),
    );
  }
}


