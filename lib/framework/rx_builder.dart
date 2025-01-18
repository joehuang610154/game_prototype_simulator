import 'package:flutter/material.dart';
import 'package:game_prototype_simulator/framework/rx.dart';

class RxBuilder<T> extends StatelessWidget {
  final Rx<T> rx;
  final Widget Function(BuildContext context, T) builder;
  final Widget Function(BuildContext context, Object err)? errorBuilder;
  final Widget? onLoading;
  final Widget? onError;

  const RxBuilder(
    this.rx, {
    super.key,
    required this.builder,
    this.errorBuilder,
    this.onLoading,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: rx,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return builder(context, snapshot.data as T);
        }

        if (snapshot.hasError) {
          return errorBuilder == null
              ? onError ?? _DefaultErrorView()
              : errorBuilder!(context, snapshot.error!);
        }

        return onLoading ?? _DefaultLoadingView();
      },
    );
  }
}

class _DefaultErrorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Some error happend",
      style: TextStyle(color: Colors.red),
    );
  }
}

class _DefaultLoadingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
