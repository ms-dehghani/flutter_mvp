import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mvp_getx/flutter_mvp_getx.dart';

abstract class BaseStateLessView extends StatelessWidget {
  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double screenHeight(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).height / dividedBy;
  }

  double screenWidth(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).width / dividedBy;
  }
}

abstract class BaseStateFullView<T extends StatefulWidget> extends State<T> with BaseView {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  late BasePresenter presenter;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
    setPresenter();
  }

  void setPresenter();

  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double screenHeight(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).height / dividedBy;
  }

  double screenWidth(BuildContext context, {double dividedBy = 1}) {
    return screenSize(context).width / dividedBy;
  }

  void changeStatusBarColor(Color color, bool darkIcon) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: darkIcon ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: color));
  }

  // Future goToPage(Widget page,
  //     {bool materialRoute = true, bool replace = false}) {
  //   return Utils.goToPage(context, page,
  //       materialRoute: materialRoute, replace: replace);
  // }

}
