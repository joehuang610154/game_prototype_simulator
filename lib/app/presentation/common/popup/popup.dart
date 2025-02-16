import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/app_context/app_context.dart';

mixin Popup<T extends Object> on Widget {
  Future<T?> show() async {
    return await showDialog<T>(
      context: app.context,
      builder: (context) => this,
    );
  }
}

mixin PopupActions<T extends Object> on Widget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void cancel() {
    app.pop();
  }

  void submit(T result) {
    if (formKey.currentState!.validate()) {
      app.pop<T>(result);
    }
  }
}
