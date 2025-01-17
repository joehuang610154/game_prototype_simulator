import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/disposable.dart';
import 'package:game_prototype_simulator/injection.dart';
import 'package:provider/provider.dart';

class ViewModelProvider<T extends Object> extends Provider<T> {
  ViewModelProvider({
    super.key,
    required WidgetBuilder builder,
  }) : super(
          create: (context) => getIt<T>(),
          builder: (context, child) => builder(context),
          dispose: (context, viewModel) {
            if (viewModel is Disposable) {
              viewModel.dispose();
            }
          },
        );
}
