import 'package:skiza/models/home_resource_category.dart';

class HomeResourceService {
  getAllResources() {
    return HomeResourceCategory.getResourcesCategory();
  }

}
