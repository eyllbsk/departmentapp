import 'package:flutter/material.dart';
import '../services/auth_service.dart';
import '../tabs/about_tab.dart';
import '../tabs/people_tab.dart';
import '../tabs/infrastructure_tab.dart';
import '../tabs/courses_tab.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Department Application'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'HOME'),
              Tab(text: 'INSTRUCTORS'),
              Tab(text: 'CLASSROOM'),
              Tab(text: 'LESSONS'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                await AuthService.instance.logout();
                if (!context.mounted) return;
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                      (_) => false,
                );
              },
            )
          ],
        ),
        body: const TabBarView(
          children: [
            AboutTab(),
            PeopleTab(),
            InfrastructureTab(),
            CoursesTab(),
          ],
        ),
      ),
    );
  }
}
