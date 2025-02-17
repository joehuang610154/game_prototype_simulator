class CreateSceneInput {
  final String name;

  CreateSceneInput({
    required this.name,
  });
}

abstract class GetCreateSceneInputRepository {
  Future<CreateSceneInput?> get();
}
