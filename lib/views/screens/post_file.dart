import 'package:flutter/material.dart';
class PostFile extends StatefulWidget {
  const PostFile({super.key});

  @override
  State<PostFile> createState() => _PostFileState();
}

class _PostFileState extends State<PostFile> {
  TextEditingController  emailControllar = TextEditingController();
  TextEditingController  passwordControllar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post api"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(controller: emailControllar ),
          TextField(controller: passwordControllar ),
        ],
      ),
    );
  }
}
