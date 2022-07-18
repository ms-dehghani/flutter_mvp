import 'package:flutter_mvp_getx/flutter_mvp_getx.dart';

import '../model/HomeModel.dart';
import '../view_model/HomeViewModel.dart';

class HomePresenter extends BasePresenter<HomeModel, BaseView, HomeViewModel> {
  HomePresenter(model, view, {viewModel}) : super(model, view, viewModel: viewModel);

  void inc({List<int>? ids}) async {
    view.showProgress();
    viewModel.counter = await model.inc(viewModel.counter);
    view.hideProgress();
    update(ids);
  }

  @override
  setViewModel(HomeViewModel vm) {
    viewModel = vm;
  }
}
