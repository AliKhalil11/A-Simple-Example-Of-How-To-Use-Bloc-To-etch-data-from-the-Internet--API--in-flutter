import '../models/albums.dart';
import '../web_server/album_api.dart';

class AlbumRepo{
  AlbumRepo(this.albumApi);
  final AlbumApi albumApi ;
   Future <List<Albums>> getAlbums()async{
    final albums = await albumApi.getAlbums();
    return albums.map((album) => Albums.fromJson(album as Map<String, dynamic>)).toList(); 
   }
}