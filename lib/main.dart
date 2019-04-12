import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(MyApp());

Dio dio = Dio();

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "0401practice",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  String str;
  @override
  Widget build(BuildContext context) {
    //getData();
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FlatButton(onPressed: (){getHttp();}, child: Text("获取信息")),
      ),
    ) ;
  }

 /* void getData() async{
    Response response;
    response = await dio.get("https://www.baidu.com/");
    str = response.statusCode.toString();
  }*/
  void getHttp() async {
    String uri= "http://45.32.107.69/myWeb";
    try {
      Response response = await dio.get(uri);
      //Response response = await dio.request(uri,data: {"user_id":"123456","password":"123456"});
      print(response.statusCode);
      print(response.data);
      print("以上是data");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
