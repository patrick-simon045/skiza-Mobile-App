import 'package:flutter/foundation.dart';
import 'package:skiza/models/home_sub_resource_category.dart';

class HomeResourceCategory {
  final String categoryTitle;
  final bool isSelected;
  final String categoryId;
  final List<HomeSubResourceCategory> homeSubResourceCategory;
  HomeResourceCategory(
      {@required this.categoryTitle,
      this.isSelected = false,
      @required this.categoryId,
      @required this.homeSubResourceCategory});

 static List<HomeResourceCategory> getResourcesCategory() {
    return [
      HomeResourceCategory(
          categoryTitle: "AudioBook",
          categoryId: "audiobook",
          isSelected: true,
          homeSubResourceCategory: [
            HomeSubResourceCategory(categoryTitle: "MyLibrary", subCategoryId: "library",isSelected: true),
            HomeSubResourceCategory(categoryTitle: "All", subCategoryId: "all"),
            HomeSubResourceCategory(categoryTitle: "Comedy", subCategoryId: "comedy"),
            HomeSubResourceCategory(categoryTitle: "Romance", subCategoryId: "romance"),
            HomeSubResourceCategory(categoryTitle: "Drama", subCategoryId: "drama"),
            HomeSubResourceCategory(categoryTitle: "Action", subCategoryId: "action"),
          ]),
      HomeResourceCategory(
          categoryTitle: "Podcast",
          categoryId: "podcast",
          homeSubResourceCategory: [
           HomeSubResourceCategory(categoryTitle: "MyLibrary", subCategoryId: "library",isSelected: true),
            HomeSubResourceCategory(categoryTitle: "All", subCategoryId: "all"),
            HomeSubResourceCategory(categoryTitle: "Comedy", subCategoryId: "comedy"),
            HomeSubResourceCategory(categoryTitle: "Romance", subCategoryId: "romance"),
            HomeSubResourceCategory(categoryTitle: "Drama", subCategoryId: "drama"),
            HomeSubResourceCategory(categoryTitle: "Action", subCategoryId: "action"),
          ]),
      HomeResourceCategory(
          categoryTitle: "Workshop",
          categoryId: "workshop",
          homeSubResourceCategory: [
           HomeSubResourceCategory(categoryTitle: "MyLibrary", subCategoryId: "library",isSelected: true),
            HomeSubResourceCategory(categoryTitle: "All", subCategoryId: "all"),
            HomeSubResourceCategory(categoryTitle: "Comedy", subCategoryId: "comedy"),
            HomeSubResourceCategory(categoryTitle: "Romance", subCategoryId: "romance"),
            HomeSubResourceCategory(categoryTitle: "Drama", subCategoryId: "drama"),
            HomeSubResourceCategory(categoryTitle: "Action", subCategoryId: "action"),
          ])
    ];
  }
}
