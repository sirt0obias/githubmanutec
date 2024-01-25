import '../database.dart';

class NotasTable extends SupabaseTable<NotasRow> {
  @override
  String get tableName => 'notas';

  @override
  NotasRow createRow(Map<String, dynamic> data) => NotasRow(data);
}

class NotasRow extends SupabaseDataRow {
  NotasRow(super.data);

  @override
  SupabaseTable get table => NotasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get selecClientes => getField<String>('selec_clientes');
  set selecClientes(String? value) => setField<String>('selec_clientes', value);

  String? get referencia => getField<String>('referencia');
  set referencia(String? value) => setField<String>('referencia', value);

  String? get descOper => getField<String>('desc_oper');
  set descOper(String? value) => setField<String>('desc_oper', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get prioridade => getField<String>('prioridade');
  set prioridade(String? value) => setField<String>('prioridade', value);

  String? get colaborador => getField<String>('colaborador');
  set colaborador(String? value) => setField<String>('colaborador', value);
}
