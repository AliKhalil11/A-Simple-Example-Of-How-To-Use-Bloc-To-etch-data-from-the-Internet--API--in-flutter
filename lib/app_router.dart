import 'package:bloc_test/Presentation/views/album_details.dart';
import 'package:bloc_test/business_logic/cubit/posts_cubit.dart';
import 'package:bloc_test/data/repo/album_repo.dart';
import 'package:bloc_test/data/web_server/album_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Presentation/views/album_view.dart';
import 'core/constants/constants.dart';

class AppRouter{
  late AlbumRepo albumRepo;
  late PostsCubit postsCubit;
  AppRouter(){
    albumRepo = AlbumRepo(AlbumApi());
    postsCubit= PostsCubit(albumRepo);
  }
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case albumview :
      return MaterialPageRoute(builder: (_)=> BlocProvider(
        create: (BuildContext context) => 
      postsCubit,
      child: const Album_View(),

      )
      
      );
      case albumdetails :
      return MaterialPageRoute(builder: (_)=> const AlbumDetails());
    }
  }
}