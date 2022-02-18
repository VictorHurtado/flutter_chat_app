import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/loading_page.dart';
import 'package:chat_app/pages/login_pages.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/pages/users_pages.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  CARoutes.Users.routeName: (_) => UsersPage(),
  CARoutes.Chat.routeName: (_) => ChatPage(),
  CARoutes.Loading.routeName: (_) => LoadingPage(),
  CARoutes.Login.routeName: (_) => LoginPage(),
  CARoutes.Register.routeName: (_) => RegisterPage()
};

// ignore: constant_identifier_names
enum CARoutes { Users, Chat, Register, Login, Loading }

extension RoutesValue on CARoutes {
  String get routeName {
    switch (this) {
      case CARoutes.Users:
        return '/users';
      case CARoutes.Chat:
        return '/chat';
      case CARoutes.Login:
        return '/login';
      case CARoutes.Register:
        return '/register';
      case CARoutes.Loading:
        return '/loading';

      default:
        return '/';
    }
  }
}
