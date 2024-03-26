import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/cubit/posts_cubit.dart';

import '../../data/models/albums.dart';
import 'buildLoadedListWidget.dart';


class buildBlocWidget extends StatefulWidget {
  const buildBlocWidget({super.key});



  @override
  State<buildBlocWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<buildBlocWidget> {
    late List<Albums> allAlbums;
  @override
   void initState() {
    super.initState();
   BlocProvider.of<PostsCubit>(context).geyAllAlbum();
  }

  Widget build(BuildContext context) {
 return BlocBuilder<PostsCubit,PostsState>(builder: (context,state){
  
      
      return const buildLoadedListWidget();
     }
 );
    
}
}