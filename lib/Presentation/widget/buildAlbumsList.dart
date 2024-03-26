import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/cubit/posts_cubit.dart';
import '../../data/models/albums.dart';
import 'album_item.dart';
import 'showLodingIndicator.dart';

class buildAlbumsList extends StatefulWidget {
  const buildAlbumsList({super.key});

  @override
  State<buildAlbumsList> createState() => _buildAlbumsListState();
}

class _buildAlbumsListState extends State<buildAlbumsList> {
  late List<Albums> allAlbums;
  late List<Albums> searchegForAlbums;
    final searchTextController = TextEditingController();
  
  
 
  
  @override
  void initState() {
    super.initState();
    
     BlocProvider.of<PostsCubit>(context).geyAllAlbum();
  }

  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
      if(state is AlbumsLodaed ){
        allAlbums =(state).albums;
        return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1),
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount:
                allAlbums.length,
            itemBuilder: (ctx, index) {
              return AlbumsItem(
                albums:
                    allAlbums[index]
              );
            });}
            else {
              return const showLodingIndicator();
            }
      },
    );
  }
}
