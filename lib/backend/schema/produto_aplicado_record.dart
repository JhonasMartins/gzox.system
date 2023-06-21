import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoAplicadoRecord extends FirestoreRecord {
  ProdutoAplicadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "aplicador" field.
  String? _aplicador;
  String get aplicador => _aplicador ?? '';
  bool hasAplicador() => _aplicador != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "sec_prospec_45" field.
  String? _secProspec45;
  String get secProspec45 => _secProspec45 ?? '';
  bool hasSecProspec45() => _secProspec45 != null;

  // "sec_nano_plastic" field.
  String? _secNanoPlastic;
  String get secNanoPlastic => _secNanoPlastic ?? '';
  bool hasSecNanoPlastic() => _secNanoPlastic != null;

  // "sec_light_coat" field.
  String? _secLightCoat;
  String get secLightCoat => _secLightCoat ?? '';
  bool hasSecLightCoat() => _secLightCoat != null;

  // "sec_wheel_chrome_coat" field.
  String? _secWheelChromeCoat;
  String get secWheelChromeCoat => _secWheelChromeCoat ?? '';
  bool hasSecWheelChromeCoat() => _secWheelChromeCoat != null;

  // "sec_tire_coat" field.
  String? _secTireCoat;
  String get secTireCoat => _secTireCoat ?? '';
  bool hasSecTireCoat() => _secTireCoat != null;

  // "sec_prospec_couro" field.
  String? _secProspecCouro;
  String get secProspecCouro => _secProspecCouro ?? '';
  bool hasSecProspecCouro() => _secProspecCouro != null;

  // "dt_aplicacao" field.
  String? _dtAplicacao;
  String get dtAplicacao => _dtAplicacao ?? '';
  bool hasDtAplicacao() => _dtAplicacao != null;

  void _initializeFields() {
    _aplicador = snapshotData['aplicador'] as String?;
    _codigo = snapshotData['codigo'] as String?;
    _foto = snapshotData['foto'] as String?;
    _placa = snapshotData['placa'] as String?;
    _produto = snapshotData['produto'] as String?;
    _secProspec45 = snapshotData['sec_prospec_45'] as String?;
    _secNanoPlastic = snapshotData['sec_nano_plastic'] as String?;
    _secLightCoat = snapshotData['sec_light_coat'] as String?;
    _secWheelChromeCoat = snapshotData['sec_wheel_chrome_coat'] as String?;
    _secTireCoat = snapshotData['sec_tire_coat'] as String?;
    _secProspecCouro = snapshotData['sec_prospec_couro'] as String?;
    _dtAplicacao = snapshotData['dt_aplicacao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto_aplicado');

  static Stream<ProdutoAplicadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutoAplicadoRecord.fromSnapshot(s));

  static Future<ProdutoAplicadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutoAplicadoRecord.fromSnapshot(s));

  static ProdutoAplicadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutoAplicadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutoAplicadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutoAplicadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutoAplicadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutoAplicadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutoAplicadoRecordData({
  String? aplicador,
  String? codigo,
  String? foto,
  String? placa,
  String? produto,
  String? secProspec45,
  String? secNanoPlastic,
  String? secLightCoat,
  String? secWheelChromeCoat,
  String? secTireCoat,
  String? secProspecCouro,
  String? dtAplicacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'aplicador': aplicador,
      'codigo': codigo,
      'foto': foto,
      'placa': placa,
      'produto': produto,
      'sec_prospec_45': secProspec45,
      'sec_nano_plastic': secNanoPlastic,
      'sec_light_coat': secLightCoat,
      'sec_wheel_chrome_coat': secWheelChromeCoat,
      'sec_tire_coat': secTireCoat,
      'sec_prospec_couro': secProspecCouro,
      'dt_aplicacao': dtAplicacao,
    }.withoutNulls,
  );

  return firestoreData;
}
