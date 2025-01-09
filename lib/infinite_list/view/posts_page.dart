import 'package:bloc_practice/infinite_list/view/posts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../bloc/post_bloc.dart';
import '../simple_bloc_observer.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc.observer = const SimpleBlocObserver();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: const PostsList(),
      ),
    );
  }
}
