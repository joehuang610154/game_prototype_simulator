import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:provider/provider.dart';

class ViewModelProvider<T extends ViewModel> extends Provider<T> {
  ViewModelProvider({
    super.key,
    required WidgetBuilder builder,
  }) : super(
          create: (context) => getIt<T>(),
          builder: (context, child) => builder(context),
          dispose: (context, viewModel) => viewModel.dispose(),
        );
}
