import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/app_context.dart';

mixin Popup on Widget {
  Future<void> show() async {
    await showDialog(
      context: app.context,
      builder: (context) => this,
    );
  }
}
