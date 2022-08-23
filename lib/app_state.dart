import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _calcadaReferencia =
        prefs.getString('ff_calcadaReferencia')?.ref ?? _calcadaReferencia;
  }

  SharedPreferences prefs;

  DocumentReference _calcadaReferencia;
  DocumentReference get calcadaReferencia => _calcadaReferencia;
  set calcadaReferencia(DocumentReference _value) {
    _calcadaReferencia = _value;
    prefs.setString('ff_calcadaReferencia', _value.path);
  }

  String categoria = 'lodging';

  String posicao = '';

  String entradaPrincipal = '';

  String calcada = '';

  String circulacaoInterna = '';

  String banheiro = '';

  String audioVisual = '';

  String estacionamento = '';

  String foto;

  String distancia = '500';

  String vazio = '';

  String nome = '';

  String email = '';

  String senha = '';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
