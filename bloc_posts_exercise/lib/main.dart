import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'post_model.dart'; // Changed import statement

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Changed super.key to Key? key

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(),
      child: MaterialApp(
        title: 'HTTP Package Demo', // Changed app title
        theme: ThemeData(
          primaryColor: Colors.green, // Changed primaryColor
          primarySwatch: Colors.orange, // Changed primarySwatch
        ),
        home: const HomeScreen(), // Changed HomeWidget to HomeScreen
      ),
    );
  }
}

class PostBloc extends Cubit<List<PostModel>> {
  PostBloc() : super([]);

  Future<void> getPosts() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> responseBody = json.decode(response.body);
      final posts = responseBody.map((postJson) => PostModel.fromJson(postJson)).toList();
      emit(posts);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); // Changed super.key to Key? key

  @override
  Widget build(BuildContext context) {
    final postBloc = BlocProvider.of<PostBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Changed app bar color
        title: const Center(
          child: Text('HTTP Package Demo', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () => postBloc!.getPosts(),
              child: const Text('Fetch Data', style: TextStyle(color: Colors.white)),
            ),
          ),
          BlocBuilder<PostBloc, List<PostModel>>(
            builder: (context, posts) {
              if (posts.isEmpty) {
                return const Expanded(
                  child: Center(
                    child: Text('No posts available'),
                  ),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      return buildDataWidget(context, post);
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildDataWidget(BuildContext context, PostModel post) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green), // Changed border color
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title, style: const TextStyle(color: Colors.green)), // Changed text color
            const Divider(color: Colors.green), // Changed divider color
            const SizedBox(height: 10),
            Text(post.description, style: const TextStyle(color: Colors.grey)), // Changed text color
          ],
        ),
      ),
    );
  }
}
