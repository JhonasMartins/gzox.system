import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ManutencaoGzoxRecord extends FirestoreRecord {
  ManutencaoGzoxRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Codigo_do_produto" field.
  String? _codigoDoProduto;
  String get codigoDoProduto => _codigoDoProduto ?? '';
  bool hasCodigoDoProduto() => _codigoDoProduto != null;

  // "Foto_da_manutencao" field.
  String? _fotoDaManutencao;
  String get fotoDaManutencao => _fotoDaManutencao ?? '';
  bool hasFotoDaManutencao() => _fotoDaManutencao != null;

  // "Aplicador_credenciado" field.
  String? _aplicadorCredenciado;
  String get aplicadorCredenciado => _aplicadorCredenciado ?? '';
  bool hasAplicadorCredenciado() => _aplicadorCredenciado != null;

  // "O_que_foi_feito" field.
  String? _oQueFoiFeito;
  String get oQueFoiFeito => _oQueFoiFeito ?? '';
  bool hasOQueFoiFeito() => _oQueFoiFeito != null;

  // "placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "produto_manutencao" field.
  String? _produtoManutencao;
  String get produtoManutencao => _produtoManutencao ?? '';
  bool hasProdutoManutencao() => _produtoManutencao != null;

  // "data_da_manutencao" field.
  String? _dataDaManutencao;
  String get dataDaManutencao => _dataDaManutencao ?? '';
  bool hasDataDaManutencao() => _dataDaManutencao != null;

  // "sec_prospec_45" field.
  String? _secProspec45;
  String get secProspec45 => _secProspec45 ?? '';
  bool hasSecProspec45() => _secProspec45 != null;

  // "sec_prospec_couro" field.
  String? _secProspecCouro;
  String get secProspecCouro => _secProspecCouro ?? '';
  bool hasSecProspecCouro() => _secProspecCouro != null;

  // "sec_light_coat" field.
  String? _secLightCoat;
  String get secLightCoat => _secLightCoat ?? '';
  bool hasSecLightCoat() => _secLightCoat != null;

  // "sec_wheel_chrome_coat" field.
  String? _secWheelChromeCoat;
  String get secWheelChromeCoat => _secWheelChromeCoat ?? '';
  bool hasSecWheelChromeCoat() => _secWheelChromeCoat != null;

  // "sec_nano_plastic" field.
  String? _secNanoPlastic;
  String get secNanoPlastic => _secNanoPlastic ?? '';
  bool hasSecNanoPlastic() => _secNanoPlastic != null;

  // "sec_tire_coat" field.
  String? _secTireCoat;
  String get secTireCoat => _secTireCoat ?? '';
  bool hasSecTireCoat() => _secTireCoat != null;

  void _initializeFields() {
    _codigoDoProduto = snapshotData['Codigo_do_produto'] as String?;
    _fotoDaManutencao = snapshotData['Foto_da_manutencao'] as String?;
    _aplicadorCredenciado = snapshotData['Aplicador_credenciado'] as String?;
    _oQueFoiFeito = snapshotData['O_que_foi_feito'] as String?;
    _placa = snapshotData['placa'] as String?;
    _produtoManutencao = snapshotData['produto_manutencao'] as String?;
    _dataDaManutencao = snapshotData['data_da_manutencao'] as String?;
    _secProspec45 = snapshotData['sec_prospec_45'] as String?;
    _secProspecCouro = snapshotData['sec_prospec_couro'] as String?;
    _secLightCoat = snapshotData['sec_light_coat'] as String?;
    _secWheelChromeCoat = snapshotData['sec_wheel_chrome_coat'] as String?;
    _secNanoPlastic = snapshotData['sec_nano_plastic'] as String?;
    _secTireCoat = snapshotData['sec_tire_coat'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Manutencao_gzox');

  static Stream<ManutencaoGzoxRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ManutencaoGzoxRecord.fromSnapshot(s));

  static Future<ManutencaoGzoxRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ManutencaoGzoxRecord.fromSnapshot(s));

  static ManutencaoGzoxRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ManutencaoGzoxRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ManutencaoGzoxRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ManutencaoGzoxRecord._(reference, mapFromFirestore(data));

  static ManutencaoGzoxRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ManutencaoGzoxRecord.getDocumentFromData(
        {
          'Codigo_do_produto': snapshot.data['Codigo_do_produto'],
          'Foto_da_manutencao': snapshot.data['Foto_da_manutencao'],
          'Aplicador_credenciado': snapshot.data['Aplicador_credenciado'],
          'O_que_foi_feito': snapshot.data['O_que_foi_feito'],
          'placa': snapshot.data['placa'],
          'produto_manutencao': snapshot.data['produto_manutencao'],
          'data_da_manutencao': snapshot.data['data_da_manutencao'],
          'sec_prospec_45': snapshot.data['sec_prospec_45'],
          'sec_prospec_couro': snapshot.data['sec_prospec_couro'],
          'sec_light_coat': snapshot.data['sec_light_coat'],
          'sec_wheel_chrome_coat': snapshot.data['sec_wheel_chrome_coat'],
          'sec_nano_plastic': snapshot.data['sec_nano_plastic'],
          'sec_tire_coat': snapshot.data['sec_tire_coat'],
        },
        ManutencaoGzoxRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ManutencaoGzoxRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Manutencao_gzox',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ManutencaoGzoxRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ManutencaoGzoxRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createManutencaoGzoxRecordData({
  String? codigoDoProduto,
  String? fotoDaManutencao,
  String? aplicadorCredenciado,
  String? oQueFoiFeito,
  String? placa,
  String? produtoManutencao,
  String? dataDaManutencao,
  String? secProspec45,
  String? secProspecCouro,
  String? secLightCoat,
  String? secWheelChromeCoat,
  String? secNanoPlastic,
  String? secTireCoat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Codigo_do_produto': codigoDoProduto,
      'Foto_da_manutencao': fotoDaManutencao,
      'Aplicador_credenciado': aplicadorCredenciado,
      'O_que_foi_feito': oQueFoiFeito,
      'placa': placa,
      'produto_manutencao': produtoManutencao,
      'data_da_manutencao': dataDaManutencao,
      'sec_prospec_45': secProspec45,
      'sec_prospec_couro': secProspecCouro,
      'sec_light_coat': secLightCoat,
      'sec_wheel_chrome_coat': secWheelChromeCoat,
      'sec_nano_plastic': secNanoPlastic,
      'sec_tire_coat': secTireCoat,
    }.withoutNulls,
  );

  return firestoreData;
}
