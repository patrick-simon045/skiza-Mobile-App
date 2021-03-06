import 'package:flutter/material.dart';
import 'package:skiza/core/components/app_drawer_component.dart';
import 'package:skiza/core/components/search_component.dart';
import 'package:skiza/core/utils/app_utils.dart';

class HomeAppBarComponent extends StatelessWidget {
  final TextEditingController namecontroller = new TextEditingController();

  void appDrawer(BuildContext context) async {
    String drawerResponse =
        await AppUtil.showPopUpModal(context, AppDrawerComponent(), true);
    if (drawerResponse != null) {
      switch (drawerResponse) {
        case "theme":
          print("Darkmode");
          break;
        case "auth":
          print("Logout");
          break;
        case "account":
          print("Account");
          break;
        default:
          print("no further options");
      }
    }
  }

// AppUtil
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: _height / 6,
            width: _width,
            color: Colors.transparent,
            child: Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.transparent,
                      child: SearchComponentContainerTextField(
                        namecontroller: namecontroller,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      child: IconButton(
                          icon: (Icon(
                            Icons.book,
                            color: Color(0xFF707070),
                          )),
                          onPressed: () {}),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.transparent,
                        child: IconButton(
                          icon: (Icon(
                            Icons.directions_railway_outlined,
                            color: Color(0xFF838383),
                          )),
                          onPressed: () => appDrawer(context),
                        )))
              ],
            )),
      ],
    );
  }
}
