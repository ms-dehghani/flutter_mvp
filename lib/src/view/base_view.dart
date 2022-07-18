import '../view/progress_iface.dart';

abstract class BaseView implements ProgressIFace {
  @override
  void hideProgress() {}

  @override
  void showProgress() {}
}
