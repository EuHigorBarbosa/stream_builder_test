
import 'dart:developer' as dev;
import 'dart:async';

import '../domain/seq_dep_entity.dart';
import 'seq_dep_service.dart';



class SeqDepServiceFFmpeg implements SeqDepService {
  static SeqDepServiceFFmpeg? _instance;
  SeqDepServiceFFmpeg._(); 

  factory SeqDepServiceFFmpeg(){
      _instance ??= SeqDepServiceFFmpeg._();
      return _instance!;
  }

  static List<SeqDepEntity> _activeListSeqDep = [];
  static MultiStreamController<List<SeqDepEntity>>? _controller;
  
  

  @override
  static final _activeSeqDepStream = Stream<List<SeqDepEntity>>.multi( (controller) {
    _controller = controller;

    _addInStream(_activeListSeqDep);

  }, isBroadcast: true);
   
  
  @override
  List<SeqDepEntity> get activeSeqDepList => _activeListSeqDep;

  @override
  Stream<List<SeqDepEntity>> get activeSeqDepListStream => _activeSeqDepStream;
 
  @override
   void addActiveSeqDep( SeqDepEntity seqDep)async {
      _activeListSeqDep.add(seqDep);
      _addInStream(_activeListSeqDep);
   }
  
  static void _addInStream (List<SeqDepEntity> activeEntities){
    dev.log('The number of items on Stream is: ${activeEntities.length}');
    _controller?.add(activeEntities);
  }

}
