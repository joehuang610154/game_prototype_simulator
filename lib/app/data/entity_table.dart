import 'package:drift/drift.dart';

abstract class EntityTable extends Table {
  TextColumn get id => text().withLength(min: 32, max: 32)();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
