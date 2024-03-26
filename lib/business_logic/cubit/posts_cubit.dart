import 'package:bloc/bloc.dart';
import 'package:bloc_test/data/repo/album_repo.dart';
import '../../data/models/albums.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
final AlbumRepo albumRepo;
  List<Albums> albums=[];
  
 

  PostsCubit(this.albumRepo) : super(PostsInitial());

  List<Albums> geyAllAlbum(){
    albumRepo.getAlbums().then((albums) {
      emit(AlbumsLodaed(albums));
      this.albums=albums;
    });

    return albums;
  }
 
}
