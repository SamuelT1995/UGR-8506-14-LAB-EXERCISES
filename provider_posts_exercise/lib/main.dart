import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'post_model.dart'; // Changed import statement

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostProvider(),
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

class PostProvider extends ChangeNotifier {
  List<PostModel>? posts;

  Future<void> getPosts() async {
    final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> responseBody = json.decode(response.body);
      posts = responseBody.map((postJson) => PostModel.fromJson(postJson)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Changed app bar color
        title: const Center(
          child: Text('HTTP Package Demo', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Consumer<PostProvider>(
        builder: (context, postProvider, _) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () => postProvider.getPosts(), // Changed method name
                    child: const Text('Fetch Data', style: TextStyle(color: Colors.white)), // Changed button text
                  ),
                ),
                if (postProvider.posts != null && postProvider.posts!.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: postProvider.posts!.length,
                      itemBuilder: (context, index) {
                        final post = postProvider.posts![index];
                        return buildDataWidget(context, post);
                      },
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildDataWidget(BuildContext context, PostModel post) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Changed border color
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
