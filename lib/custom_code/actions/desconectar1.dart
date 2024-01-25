// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future desconectar1(String tabela) async {
  // Add your function code here!

  final supabase = SupaFlow.client;
  String table = tabela;
  final channel = supabase.channel('public:' + table);

  // Desconectar do canal
  await channel.unsubscribe();
}
