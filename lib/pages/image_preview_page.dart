import 'package:flutter/material.dart';

class ImagePreviewPage extends StatelessWidget {
  final String imageAsset;
  const ImagePreviewPage({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Classroom')),
      body: Center(child: Image.asset(imageAsset)),
    );
  }
}
