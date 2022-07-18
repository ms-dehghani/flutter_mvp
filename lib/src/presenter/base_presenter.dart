import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/base_model.dart';
import '../view/base_view.dart';
import '../view_model/base_view_model.dart';

abstract class BasePresenter<M extends BaseModel, V extends BaseView, VM extends BaseViewModel>
    extends GetxController {
  M model;
  V view;

  late VM _viewModel;

  BasePresenter(this.model, this.view, {VM? viewModel}) {
    _viewModel = viewModel!;
  }

  setViewModel(VM vm);

  @protected
  set viewModel(newValue) {
    _viewModel = newValue;
  }

  @protected
  VM get viewModel => _viewModel;

  VM getViewModel() {
    return _viewModel;
  }
}
