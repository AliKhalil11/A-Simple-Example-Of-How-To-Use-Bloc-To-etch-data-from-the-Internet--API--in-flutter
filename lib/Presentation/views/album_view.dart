// ignore_for_file: camel_case_types


import 'package:bloc_test/core/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../data/models/albums.dart';
import '../widget/buildAppBarTitle.dart';
import '../widget/buildBlocWidget.dart';


class Album_View extends StatefulWidget {
  const Album_View({super.key});

  @override
  State<Album_View> createState() => _Album_ViewState();
}

class _Album_ViewState extends State<Album_View> {
 late List<Albums> allAlbums;
  

  // final _searchTextController = TextEditingController();

  // Widget _buildSearchField() {
  //   return TextField(
  //     controller: _searchTextController,
  //     cursorColor: MyColors.Mygrey,
  //     decoration: const InputDecoration(
  //       hintText: 'Find a character...',
  //       border: InputBorder.none,
  //       hintStyle: TextStyle(color: MyColors.Mygrey, fontSize: 18),
  //     ),
  //     style:const TextStyle(color: MyColors.Mygrey, fontSize: 18),
  //     onChanged: (searchedCharacter) {
  //       addSearchedFOrItemsToSearchedList(searchedCharacter);
  //     },
  //   );
  // }

  // void addSearchedFOrItemsToSearchedList(String searchedCharacter) {
  //   searchegForAlbums = allAlbums
  //       .where((character) =>
  //           character.title!.toLowerCase().startsWith(searchedCharacter))
  //       .toList();
  //   setState(() {});
  // }


  



  @override
 



  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: MyColors.MyPurple,
     
           
     title: const  buildAppBarTitle(),
        
    ),
    body: buildBlocWidget(),
   );
  }

   // @override
  // void initState() {
  //   super.initState();
  //  BlocProvider.of<PostsCubit>(context).geyAllAlbum();
  // }


  //  Widget _buildAppBarTitle() {
//     return const  Text(
//       'Characters',
//       style: TextStyle(color: MyColors.Mygrey),
//     );
//   }


  //  Widget buildBlocWidget(){
  //   return BlocBuilder<PostsCubit,PostsState>(builder: (context,state){
  //    if(state is AlbumsLodaed){
  //     allAlbums = (state).albums;
  //     return buildLoadedListWidget();
  //    }
  //    else{

  //      return showLodingIndicator();
  //    }
  //   });
  // }

  // Widget showLodingIndicator(){
  //   return const Center(child: 
  //   CircularProgressIndicator(
  //     color: MyColors.MyPurple,
  //   ));
  // }

  //  Widget buildLoadedListWidget(){
  //   return SingleChildScrollView(
  //    child: Container(
  //     color: MyColors.Mygrey,
  //     child:Column(children: [
  //       buildAlbumsList(),
  //     ],) ,
  //    ),
  //   );
  //  }

  //  Widget buildAlbumsList(){
  //   return GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
  //     crossAxisCount: 2,
  //     childAspectRatio: 2/3,
  //     crossAxisSpacing: 1,
  //     mainAxisSpacing: 1
  //   ),
  //   shrinkWrap: true,physics: const ClampingScrollPhysics(),
  //   padding: EdgeInsets.zero,
  //   itemCount: _searchTextController.text.isEmpty
  //         ? allAlbums.length
  //         : searchegForAlbums.length,
  //    itemBuilder: (ctx,index){
      
  //     return  AlbumsItem(albums:  _searchTextController.text.isEmpty
  //             ? allAlbums[index]
  //             : searchegForAlbums[index],);
  //    });
  //  }

 
}
