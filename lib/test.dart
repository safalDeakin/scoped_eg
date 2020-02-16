import 'APIs.dart';
import 'package:http/http.dart' as http;
void main() async {

    var header = {
            "Content-Type" : "application/x-www-form-urlencoded",
        };
      var s = ["Sweet","Creamy"];
    var item ={"code":"ITM_DI_XXXX",
                    "name":"Pasta","type":"Dinner","basePrice":12.0,"categories":s.toString(),"url":"www.apple.com"};

    var consumer =["A","b"];
    var itemMsg = ["ITEM_DI_12"];


//  http.Response response = await http.post("http://localhost:8080/api/Item", headers: header ,body:itemMsg);
 var items = [];
  var order= {"code":"OD_121G","items":itemMsg.toString(), "type":"DineIn"};
  var orderMsg = {"_msg":item.toString(),"_producer":"server","_consumer":consumer.toString(),"_createdDate":"2012-12-01","_msgType":"Multi"};
  

   await kitchenServerApiHelper.makePostRequest("http://localhost:8080/api/Item", headers: header ,body:orderMsg).then((s){
      print(s);
   });


}