import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../pages/image_preview_page.dart';

class InfrastructureTab extends StatelessWidget {
  const InfrastructureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: classrooms.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, i) {
        final c = classrooms[i];
        return ListTile(
          title: Text(c.name),
          subtitle: Text('Capacity: ${c.capacity}'),
          trailing: SizedBox(
            width: 80,
            child: GestureDetector(
              onDoubleTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ImagePreviewPage(imageAsset: c.imageAsset)),
              ),
              child: Image.asset(c.imageAsset, fit: BoxFit.cover),
            ),
          ),
        );
      },
    );
  }
}
