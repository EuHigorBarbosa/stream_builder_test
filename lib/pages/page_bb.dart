
import 'package:flutter/material.dart';

import '../data/seq_dep_service.dart';
import '../domain/seq_dep_entity.dart';

class PageBB extends StatefulWidget {
  const PageBB({Key? key}) : super(key: key);

  @override
  State<PageBB> createState() => _PageBBState();
}


class _PageBBState extends State<PageBB> {
  SeqDepService seqDepService = SeqDepService();
  
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        //decoration: BackGroundImage.BackGroundImageBoxDecoration,
        child: Scaffold(
          
          appBar: AppBar(title: Text('Page B')),
          
          //backgroundColor: Colors.transparent,
       body:  Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(child: StreamBuilder<List<SeqDepEntity>>(
                      stream: seqDepService.activeSeqDepListStream,
                      builder: ((context, snapshot) {
                        if(snapshot.hasData){
                          return (Text('The lenght of last \nSnapshot data is: ${snapshot.data!.length}', style: TextStyle(color: Colors.black, fontSize: 20)));
                        } else {
                          return Container();
                        }
                      })),),
                    SizedBox(height: 50,),
                    Center(child: Text('Enter items on Stream in page C', style: TextStyle(color: Colors.black, fontSize: 15))),
                    IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: ()=>Navigator.of(context).pushNamed('/pageC'),)
                  ],
                ),
       ),
            ),
         
      );
    });
  }
}
