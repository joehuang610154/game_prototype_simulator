import 'package:game_prototype_simulator/framework/entity.dart';

class GameObject extends Entity {
  String name = "";
  Map<String, dynamic> properties = {};

  GameObject._();

  factory GameObject.create() {
    return GameObject._();
  }

  void rename(String newName) => name = newName;

  void setProperty(String key, dynamic value) {
    properties = {
      ...properties,
      key: value,
    };
  }

  void updatePropertyKey(String oldKey, String newKey) {
    properties = {
      ...properties,
      newKey: properties[oldKey],
    };
    properties.remove(oldKey);
  }
}
