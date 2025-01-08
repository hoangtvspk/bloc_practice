import 'package:equatable/equatable.dart';

final class Post extends Equatable {
  const Post(this.id, this.title, this.body);

  final int id;
  final String title;
  final String body;

  @override
  List<Object?> get props => [id, title, body];
}
