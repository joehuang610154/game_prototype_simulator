import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:provider/provider.dart';

class ViewModelProvider<T extends ViewModel> extends Provider<T> {
  ViewModelProvider({
    super.key,
    required WidgetBuilder builder,
    void Function(T viewModel)? onInit,
  }) : super(
          create: (context) {
            var viewModel = getIt<T>();
            onInit?.call(viewModel);
            return viewModel;
          },
          builder: (context, child) => builder(context),
          dispose: (context, viewModel) => viewModel.dispose(),
        );
}
