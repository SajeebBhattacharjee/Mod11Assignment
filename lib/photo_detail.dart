import 'package:flutter/material.dart';
import 'api_service.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  PhotoDetailScreen({required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Photo Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(photo.url),
            SizedBox(height: 10),
            Text("Title: ${photo.title}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("ID: ${photo.id}", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
