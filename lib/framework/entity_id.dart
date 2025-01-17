import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_prototype_simulator/utils/uuid_util.dart';

part 'entity_id.freezed.dart';

@freezed
class EntityId with _$EntityId {
  const EntityId._();

  const factory EntityId({
    required String id,
  }) = _EntityId;

  factory EntityId.generate() {
    return EntityId(id: UuidUtil().get());
  }
}
