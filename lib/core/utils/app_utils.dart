import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppUtil {
 
  static DateTime getDateIntoDateTimeFormat(String date) {
    return DateTime.parse(date);
  }

  static showPopUpModal(
      BuildContext context, Widget modal, bool diablePadding) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0)),
            child: Container(
              child: Padding(
                padding: diablePadding
                    ? const EdgeInsets.all(0)
                    : const EdgeInsets.only(
                        bottom: 12, top: 5, right: 5, left: 5),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () => Navigator.of(context).pop(),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                height: 22,
                                width: 22,
                                child: SvgPicture.asset(
                                    'assets/images/close_icon.svg'),
                              ),
                            )
                          ],
                        ),
                      ),
                      modal
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
