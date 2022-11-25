

import '../domain/seq_dep_entity.dart';
import 'seq_dep_service_ffmpeg.dart';


abstract class SeqDepService {

  List<SeqDepEntity> get activeSeqDepList;

  Stream<List<SeqDepEntity>> get activeSeqDepListStream;

  addActiveSeqDep( SeqDepEntity entity);

  factory SeqDepService() {
    
    return SeqDepServiceFFmpeg();
    
  }
}