import 'package:mobile/mobile.dart';
import 'package:test/test.dart';

void main() {
 List<Map<String, dynamic>> labels =[
    {"id":"0001", "deleted":true},
    {"id":"0002", "deleted":false},
    {"id":"0003", "deleted":false},
    {"id":"0004", "deleted":false},
  ];

    List<String> list = [];
  for(var i in labels){
    if(i["deleted"] == false){
      list.add(i["id"]);
    }
  }
  
  print(list);

  List<dynamic> selection =[ {
"VALUE_1": true,
"VALUE_2": false,
"VALUE_3": true,

}];

  
  List<Map<String, dynamic>> labels2 =[
    { "id": "VALUE_1", "color": "#32a852", "label": "Permata" },
    { "id": "VALUE_2", "color": "#f59b78", "label": "Mandiri" },
    { "id": "VALUE_3", "color": "#f67c12", "label": "BCA" },
  ];
 
  List a = labels2.where((map)=>selection.contains(map["id"])).toList();
 
  print(a);

}
