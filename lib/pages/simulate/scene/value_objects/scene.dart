import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene.freezed.dart';
part 'scene.g.dart';

@freezed
class Scene with _$Scene {
  const Scene._();

  const factory Scene({
    required String id,
    required String name,
  }) = _Scene;

  factory Scene.fromJson(Map<String, Object?> json) => _$SceneFromJson(json);
}
