import 'package:flutter_mvp_getx/flutter_mvp_getx.dart';

class HomeModel extends BaseModel {
  Future<int> inc(int lastValue) async {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return ++lastValue;
      },
    );
  }
}
