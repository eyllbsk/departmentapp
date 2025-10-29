import 'package:flutter/material.dart';
import '../models/course.dart';

class CourseDetailPage extends StatelessWidget {
  final Course course;
  const CourseDetailPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(course.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(course.code, style: theme.textTheme.titleLarge),
              const SizedBox(height: 6),
              Text('Credits: ${course.credit}  |  ECTS: ${course.ects}'),
              const Divider(height: 24),
              Text('Instructor', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(course.instructor),
              const Divider(height: 24),
              Text('Description', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(course.description, textAlign: TextAlign.justify),
              const Divider(height: 24),
              Text('Weekly Schedule', style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(course.schedule),
            ],
          ),
        ),
      ),
    );
  }
}
