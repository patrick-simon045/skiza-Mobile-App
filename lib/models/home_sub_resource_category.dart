

import 'package:flutter/foundation.dart';

class HomeSubResourceCategory{
 final String categoryTitle;
  final bool isSelected;
  final String subCategoryId;


  HomeSubResourceCategory({
    @required this.categoryTitle,
    this.isSelected = false,
    @required this.subCategoryId
  });


}