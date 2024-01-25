import '../database.dart';

class VNotasTable extends SupabaseTable<VNotasRow> {
  @override
  String get tableName => 'v_notas';

  @override
  VNotasRow createRow(Map<String, dynamic> data) => VNotasRow(data);
}

class VNotasRow extends SupabaseDataRow {
  VNotasRow(super.data);

  @override
  SupabaseTable get table => VNotasTable();

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
