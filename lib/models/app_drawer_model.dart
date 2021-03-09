import 'package:flutter/foundation.dart';

class AppDrawerModel {
  final String id;
  final String title;
  AppDrawerModel({@required this.id, @required this.title});

  static List<AppDrawerModel> defaultDrawers() {
    return [
      AppDrawerModel(id: "theme", title: "DarkMode"),
      AppDrawerModel(id: "account", title: "Account"),
      AppDrawerModel(id: "auth", title: "Logout")
    ];
  }
}
