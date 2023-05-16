import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app/pages/add_note_page.dart';
import 'package:notes_app/pages/home_page.dart';

class AppRoutes {
  static const home = "home";
  static const addNote = "add-note";
  
  static Page _homePageBuilder(BuildContext contex, GoRouterState state){
    return const MaterialPage(
      child: HomePage(),
    );
  }
  
  static Page _addNoteBuilder(BuildContext contex, GoRouterState state){
    return const MaterialPage(
      child: AddNotePage(),
    );
  }

  static GoRouter goRouter = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: home,
        path: "/",
        pageBuilder: _homePageBuilder,
        routes: [
          GoRoute(
            name: addNote,
            path: 'add-note',
            pageBuilder: _addNoteBuilder,
          ),
        ]
      ),
    ],
  );
}