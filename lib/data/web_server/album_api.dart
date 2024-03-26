

import 'package:dio/dio.dart';



class AlbumApi{
  Dio? dio;
  AlbumApi(){
    BaseOptions options = BaseOptions(
      // baseUrl: "https://jsonplaceholder.typicode.com/photos",
      receiveDataWhenStatusError: true,
      connectTimeout:const Duration(seconds: 60) ,
      receiveTimeout:const Duration(seconds: 60) ,
    );
    dio = Dio(options);
  }
  Future <List<dynamic>> getAlbums()async{

    try{
         Response response = await dio!.get("https://jsonplaceholder.typicode.com/photos");
         print(response.data.toString());
    return response.data;

    }
    catch(e){
      print(e.toString());
      return [];
    }
   
  }
}