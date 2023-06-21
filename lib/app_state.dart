import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _fotodeperfil =
          await secureStorage.getString('ff_fotodeperfil') ?? _fotodeperfil;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _Veiculos = [
    'Moto',
    'Carro',
    'Caminhão',
    'Maquina Agrícola',
    'Embarcação',
    'Aeronave'
  ];
  List<String> get Veiculos => _Veiculos;
  set Veiculos(List<String> _value) {
    _Veiculos = _value;
  }

  void addToVeiculos(String _value) {
    _Veiculos.add(_value);
  }

  void removeFromVeiculos(String _value) {
    _Veiculos.remove(_value);
  }

  void removeAtIndexFromVeiculos(int _index) {
    _Veiculos.removeAt(_index);
  }

  void updateVeiculosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Veiculos[_index] = updateFn(_Veiculos[_index]);
  }

  List<String> _Produtos = [
    'Real Glass Coat Class R',
    'Real Glass Coat Class H',
    'Real Glass Coat Class M',
    'Prospec H-9',
    'Hi-mohs Neo',
    'Hi-mohs Glow'
  ];
  List<String> get Produtos => _Produtos;
  set Produtos(List<String> _value) {
    _Produtos = _value;
  }

  void addToProdutos(String _value) {
    _Produtos.add(_value);
  }

  void removeFromProdutos(String _value) {
    _Produtos.remove(_value);
  }

  void removeAtIndexFromProdutos(int _index) {
    _Produtos.removeAt(_index);
  }

  void updateProdutosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Produtos[_index] = updateFn(_Produtos[_index]);
  }

  List<String> _Secundarios = [
    'Prospec 45',
    'Wheel & Chrome Coat',
    'Tire Coat',
    'Light Coat',
    'Nano Plastic',
    'Prospec Couro'
  ];
  List<String> get Secundarios => _Secundarios;
  set Secundarios(List<String> _value) {
    _Secundarios = _value;
  }

  void addToSecundarios(String _value) {
    _Secundarios.add(_value);
  }

  void removeFromSecundarios(String _value) {
    _Secundarios.remove(_value);
  }

  void removeAtIndexFromSecundarios(int _index) {
    _Secundarios.removeAt(_index);
  }

  void updateSecundariosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Secundarios[_index] = updateFn(_Secundarios[_index]);
  }

  String _fotodeperfil = '';
  String get fotodeperfil => _fotodeperfil;
  set fotodeperfil(String _value) {
    _fotodeperfil = _value;
    secureStorage.setString('ff_fotodeperfil', _value);
  }

  void deleteFotodeperfil() {
    secureStorage.delete(key: 'ff_fotodeperfil');
  }

  List<String> _MarcaCarro = [
    'Chevrolet',
    'Volskwagen',
    'Fiat',
    'Mercedes-Benz',
    'Citroen',
    'Honda',
    'Subaru',
    'Ferrari',
    'Lamborghini',
    'Ford',
    'Hyundai',
    'Jac',
    'Kia',
    'Dodge',
    'Chrysler',
    'Bentley',
    'Peugeot',
    '\nToyota',
    'Renault',
    'Aston Martin',
    'Audi',
    'BMW',
    'Nissan',
    'Chery',
    'Volvo',
    'Suzuki',
    'Porsche',
    'Jaguar',
    'Jeep',
    'Land Rover',
    'Lexus',
    'Maserati',
    'Mazda',
    'Mini',
    'Mitsubishi',
    'Rolls-Royce',
    'Cadillac',
    'Troller',
    'Outro'
  ];
  List<String> get MarcaCarro => _MarcaCarro;
  set MarcaCarro(List<String> _value) {
    _MarcaCarro = _value;
  }

  void addToMarcaCarro(String _value) {
    _MarcaCarro.add(_value);
  }

  void removeFromMarcaCarro(String _value) {
    _MarcaCarro.remove(_value);
  }

  void removeAtIndexFromMarcaCarro(int _index) {
    _MarcaCarro.removeAt(_index);
  }

  void updateMarcaCarroAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _MarcaCarro[_index] = updateFn(_MarcaCarro[_index]);
  }

  List<String> _ModeloCarro = [];
  List<String> get ModeloCarro => _ModeloCarro;
  set ModeloCarro(List<String> _value) {
    _ModeloCarro = _value;
  }

  void addToModeloCarro(String _value) {
    _ModeloCarro.add(_value);
  }

  void removeFromModeloCarro(String _value) {
    _ModeloCarro.remove(_value);
  }

  void removeAtIndexFromModeloCarro(int _index) {
    _ModeloCarro.removeAt(_index);
  }

  void updateModeloCarroAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ModeloCarro[_index] = updateFn(_ModeloCarro[_index]);
  }

  List<String> _ProdutosManutencao = [
    'Repel Boost',
    'Seeting Boost',
    'Hi-mohs Neo Maintenance',
    'Hi-mohs Glow Maintenance',
    'Nenhum'
  ];
  List<String> get ProdutosManutencao => _ProdutosManutencao;
  set ProdutosManutencao(List<String> _value) {
    _ProdutosManutencao = _value;
  }

  void addToProdutosManutencao(String _value) {
    _ProdutosManutencao.add(_value);
  }

  void removeFromProdutosManutencao(String _value) {
    _ProdutosManutencao.remove(_value);
  }

  void removeAtIndexFromProdutosManutencao(int _index) {
    _ProdutosManutencao.removeAt(_index);
  }

  void updateProdutosManutencaoAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _ProdutosManutencao[_index] = updateFn(_ProdutosManutencao[_index]);
  }

  List<String> _outros = ['teste'];
  List<String> get outros => _outros;
  set outros(List<String> _value) {
    _outros = _value;
  }

  void addToOutros(String _value) {
    _outros.add(_value);
  }

  void removeFromOutros(String _value) {
    _outros.remove(_value);
  }

  void removeAtIndexFromOutros(int _index) {
    _outros.removeAt(_index);
  }

  void updateOutrosAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _outros[_index] = updateFn(_outros[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
