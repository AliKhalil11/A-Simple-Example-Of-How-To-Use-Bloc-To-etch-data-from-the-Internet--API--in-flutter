import 'package:bloc_test/core/constants/colors.dart';
import 'package:bloc_test/data/models/albums.dart';
import 'package:flutter/material.dart';

class AlbumsItem extends StatelessWidget {
  final  Albums albums;
  const AlbumsItem({super.key, required this.albums});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:const EdgeInsetsDirectional.fromSTEB(8, 8, 9, 9),
      padding:const EdgeInsets.all(4),
      decoration: BoxDecoration(color: MyColors.Mywhite,
      borderRadius: BorderRadius.circular(8),
      
      ),
      child: GridTile( 
        child: Container(
        color: MyColors.Mygrey,
      child: 
       albums.thumbnailUrl!.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: 'assets/images/loading.gif',
                      image: albums.thumbnailUrl!,
                      fit: BoxFit.cover,
                    )
                  : Image.asset('assets/images/placeholder.jpg'),
       

      ),
      footer: Container(
        width: double.infinity,
        padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        color: Colors.black54,
        alignment: Alignment.bottomCenter,
        child: Text("${albums.title}",style:const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: TextAlign.center,),
      ),
      ),
    );
  }
}