class SeqDepEntity {
  String id;
  int content;
  
  SeqDepEntity({
    
    required this.id,
    required this.content,
   

  });

  factory SeqDepEntity.fromJson(Map<String, dynamic> json) {


    return SeqDepEntity(
        id: json['id'],
        content: json['content'],
       
 ); }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      
    };
  }
}