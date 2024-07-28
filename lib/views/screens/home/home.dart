import 'dart:developer';
import 'package:classicitproject/database/note_data.dart';
import 'package:classicitproject/models/node_model.dart';
import 'package:classicitproject/views/screens/home/widget/node_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note App"),
      ),
      body: NodeData.noteData.isNotEmpty
          ? ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: NodeData.noteData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onDoubleTap: () {
                    log("-------- Index : $index");
                    NodeData.noteData.removeAt(index);
                    setState(() {});
                  },
                  child: NodeCardWidget(
                    color: index % 2 == 0 ? Colors.red : null,
                    title: NodeData.noteData[index].title,
                    description: NodeData.noteData[index].description,
                  ),
                );
              })
          : Center(child: Text("Empty Notes")),
      floatingActionButton: InkWell(
        onTap: () {
          var data = NodeModel(title: "title : $i", description: "description");
          NodeData.noteData.add(data);
          i++;
          setState(() {});
        },
        child: CircleAvatar(
          radius: 20,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
