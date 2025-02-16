import 'package:game_prototype_simulator/app/presentation/table/display_as_table_model.dart';
import 'package:game_prototype_simulator/framework/view_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DisplayAsTableViewModel extends ViewModel<DisplayAsTableModel> {
  @override
  DisplayAsTableModel initState() => DisplayAsTableModel();

  Future<void> init() async {}
}
