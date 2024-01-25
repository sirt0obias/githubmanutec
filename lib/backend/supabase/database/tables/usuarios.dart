import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeUsua => getField<String>('nome_usua');
  set nomeUsua(String? value) => setField<String>('nome_usua', value);

  String? get telefoUsua => getField<String>('telefo_usua');
  set telefoUsua(String? value) => setField<String>('telefo_usua', value);

  String? get emailUsua => getField<String>('email_usua');
  set emailUsua(String? value) => setField<String>('email_usua', value);

  String? get cpfUsua => getField<String>('cpf_usua');
  set cpfUsua(String? value) => setField<String>('cpf_usua', value);

  String? get cnpjUsua => getField<String>('cnpj_usua');
  set cnpjUsua(String? value) => setField<String>('cnpj_usua', value);
}
