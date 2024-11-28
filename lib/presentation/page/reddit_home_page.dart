import 'package:flutter/material.dart';
import '../component/search_bar.dart' as custom;

class RedditHomePage extends StatefulWidget {
  const RedditHomePage({super.key});

  @override
  RedditHomePageState createState() => RedditHomePageState();
}

class RedditHomePageState extends State<RedditHomePage> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reddit Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          custom.SearchBar(
            onSearch: (text) {
              setState(() {
                query = text;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20, // dummy count
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Post ${index + 1}'),
                  subtitle: const Text('Subreddit name • Author name'),
                  leading: const Icon(Icons.article),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    // Navigate to detail page
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
