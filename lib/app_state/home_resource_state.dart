import 'package:flutter/foundation.dart';
import 'package:skiza/core/services/home_category_service/home_resource_service.dart';
import 'package:skiza/models/home_resource_category.dart';

class HomeResourceState with ChangeNotifier {
//HomeResourceService

  // initialise
  List _getAllResources;
  String _selectedCategory;
  String _selectedSubCategory;

// selector
  List get allResources => _getAllResources ?? [];
  String get selectedCategory => _selectedCategory ?? "";
  String get selectedSubCategory => _selectedSubCategory ?? "";

// reducer

  void getResources() {
   List<HomeResourceCategory> _allList = HomeResourceService().getAllResources();
   


   

  }
}
