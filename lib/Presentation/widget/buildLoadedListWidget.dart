import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import 'buildAlbumsList.dart';

class buildLoadedListWidget extends StatelessWidget {
  const buildLoadedListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
     child: Container(
      color: MyColors.Mygrey,
      child: const Column(children: [
        buildAlbumsList(),
      ],) ,
     ),
    );
  }
}