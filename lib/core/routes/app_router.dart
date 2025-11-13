import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/tasks/presentation/pages/tasks_page.dart';
import '../blocs/bottom_nav_cubit.dart';
import '../widgets/app_bottom_navigation_bar.dart';

class AppRouter {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String tasks = '/tasks';
  static const String profile = '/profile';
  static const String projects = '/projects';
  static const String projectDetail = '/projects/:id';
  static const String taskDetail = '/tasks/:id';
  static const String chat = '/chat';
  static const String chatRoom = '/chat/:id';
  static const String search = '/search';

  static final GoRouter router = GoRouter(
    initialLocation: tasks,
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        builder: (context, state, child) => BlocProvider(
          create: (_) => BottomNavCubit(),
          child: Scaffold(
            body: child,
            bottomNavigationBar: const AppBottomNav(),
          ),
        ),
        routes: [
          GoRoute(
            path: tasks,
            builder: (context, state) => const TasksPage(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return TaskDetailPage(taskId: id);
                },
              ),
            ],
          ),
          GoRoute(
            path: search,
            builder: (context, state) => const SearchPage(),
          ),
          GoRoute(
            path: chat,
            builder: (context, state) => const ChatPage(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return ChatRoomPage(chatId: id);
                },
              ),
            ],
          ),
          GoRoute(
            path: profile,
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),

      // GoRoute(
      //   path: splash,
      //   builder: (context, state) => const SplashPage(),
      // ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterPage(),
      ),

      GoRoute(
        path: projects,
        builder: (context, state) => const ProjectsPage(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return ProjectDetailPage(projectId: id);
            },
          ),
        ],
      ),
    ],
  );
}











// Placeholder pages - these will be replaced with actual implementations
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Splash Page')));
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Login Page')));
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Register Page')));
  }
}

// HomePage is now imported from features/home/presentation/pages/home_page.dart

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Profile Page')));
  }
}

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Projects Page')));
  }
}

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({required this.projectId, super.key});

  final String projectId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Project Detail: $projectId')));
  }
}



class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({required this.taskId, super.key});

  final String taskId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Task Detail: $taskId')));
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Chat Page')));
  }
}

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({required this.chatId, super.key});

  final String chatId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Chat Room: $chatId')));
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Search Page')));
  }
}
