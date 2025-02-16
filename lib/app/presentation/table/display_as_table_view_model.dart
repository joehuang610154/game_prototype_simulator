import 'package:game_prototype_simulator/app/domain/entities/scene.dart';
import 'package:game_prototype_simulator/app/domain/repositories/get_all_scenes_repository.dart';
import 'package:game_prototype_simulator/app/presentation/table/display_as_table_model.dart';
import 'package:game_prototype_simulator/framework/rx.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DisplayAsTableViewModel extends ViewModel<DisplayAsTableModel> {
  final GetAllScenesRepository _getAllScenesRepository;

  DisplayAsTableViewModel({
    required GetAllScenesRepository getAllScenesRepository,
  }) : _getAllScenesRepository = getAllScenesRepository;

  @override
  DisplayAsTableModel initState() => DisplayAsTableModel();

  Future<void> init() async {
    final scenes = await _getAllScenesRepository.get();
    setState((model) => model.setScenes(scenes));
  }

  Rx<List<Scene>> get scenes => obs((model) => model.scenes);
}
