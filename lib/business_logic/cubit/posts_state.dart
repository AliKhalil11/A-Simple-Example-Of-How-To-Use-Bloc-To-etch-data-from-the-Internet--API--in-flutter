part of 'posts_cubit.dart';


sealed class PostsState {}

final class PostsInitial extends PostsState {}


class AlbumsLodaed extends PostsState{
  final List<Albums> albums;
  AlbumsLodaed(this.albums);
}




