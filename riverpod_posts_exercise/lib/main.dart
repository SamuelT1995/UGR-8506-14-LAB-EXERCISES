import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post_model.dart'; // Changed import statement

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP Package Demo', // Changed app title
      theme: ThemeData(
        primaryColor: Colors.green, // Changed primaryColor
        primarySwatch: Colors.orange, // Changed primarySwatch
      ),
      home: const HomeScreen(), // Changed HomeWidget to HomeScreen
    );
  }
}

final postProvider = FutureProvider<List<PostModel>>((ref) async {
  final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    final List<dynamic> responseBody = json.decode(response.body);
    final posts = responseBody.map((postJson) => PostModel.fromJson(postJson)).toList();
    return posts;
  } else {
    throw Exception('Failed to load posts');
  }
});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // Changed app bar color
        title: const Center(
          child: Text(
            'HTTP Package Demo',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                ref.refresh(postProvider);
              },
              child: const Text(
                'Fetch Data',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Consumer(builder: (context, ref, child) {
              final postsAsyncValue = ref.watch(postProvider);
              return postsAsyncValue.when(
                data: (postList) {
                  if (postList.isEmpty) {
                    return const Center(
                      child: Text('No posts available'),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context, index) {
                          final post = postList[index];
                          return buildDataWidget(context, post);
                        },
                      ),
                    );
                  }
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(child: Text('Error: $error')),
              );
            }),
          ],
        ),
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
