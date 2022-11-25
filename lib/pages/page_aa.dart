
import 'package:flutter/material.dart';

class PageAA extends StatefulWidget {
  const PageAA({Key? key}) : super(key: key);

  @override
  State<PageAA> createState() => _PageAAState();
}


class _PageAAState extends State<PageAA> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        //decoration: BackGroundImage.BackGroundImageBoxDecoration,
        child: Scaffold(
          
          appBar: AppBar(title: Text('Page A')),
          
          //backgroundColor: Colors.transparent,
          body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
                  children: [
                    Center(child: Text('Start the program in page C', style: TextStyle(color: Colors.black, fontSize: 20))),
                    IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: ()=>Navigator.of(context).pushNamed('/pageB'),)
                  ],
                ),
          ),
         ),
         
      );
    });
  }
}
