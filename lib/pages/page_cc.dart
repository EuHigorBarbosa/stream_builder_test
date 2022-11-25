
import 'package:flutter/material.dart';
import 'package:streambuilder_test/data/seq_dep_service.dart';
import 'package:streambuilder_test/domain/seq_dep_entity.dart';

import '../data/seq_dep_service.dart';

class PageCC extends StatefulWidget {
  const PageCC({Key? key}) : super(key: key);

  @override
  State<PageCC> createState() => _PageCCState();
}
SeqDepService seqDepService = SeqDepService();

class _PageCCState extends State<PageCC> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        //decoration: BackGroundImage.BackGroundImageBoxDecoration,
       child: Scaffold(
          
          appBar: AppBar(title: Text('Page C')),
          
          //backgroundColor: Colors.transparent,
          body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    StreamBuilder<List<SeqDepEntity>>(
                      stream: seqDepService.activeSeqDepListStream,
                      builder: ((context, snapshot) {
                        if(snapshot.hasData){
                         return (Text('The lenght of last \nSnapshot data is: ${snapshot.data!.length}', style: TextStyle(color: Colors.black, fontSize: 20)));
                        } else {
                          return Container();
                        }
                      })),
                    Center(child: IconButton(icon: Icon(Icons.add,size: 30, color: Colors.blue,), onPressed: ()=>seqDepService.addActiveSeqDep(SeqDepEntity(id:'unique', content:1)),))

                  ],
                ),
          ),
            ),
         
      );
    });
  }
}
