import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapasRecord extends FirestoreRecord {
  MapasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "latitude_logitude" field.
  LatLng? _latitudeLogitude;
  LatLng? get latitudeLogitude => _latitudeLogitude;
  bool hasLatitudeLogitude() => _latitudeLogitude != null;

  // "Rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Nome_da_estetica" field.
  String? _nomeDaEstetica;
  String get nomeDaEstetica => _nomeDaEstetica ?? '';
  bool hasNomeDaEstetica() => _nomeDaEstetica != null;

  // "whatsapp" field.
  String? _whatsapp;
  String get whatsapp => _whatsapp ?? '';
  bool hasWhatsapp() => _whatsapp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _latitudeLogitude = snapshotData['latitude_logitude'] as LatLng?;
    _rua = snapshotData['Rua'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _estado = snapshotData['estado'] as String?;
    _pais = snapshotData['pais'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _nomeDaEstetica = snapshotData['Nome_da_estetica'] as String?;
    _whatsapp = snapshotData['whatsapp'] as String?;
    _email = snapshotData['email'] as String?;
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mapas');

  static Stream<MapasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapasRecord.fromSnapshot(s));

  static Future<MapasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapasRecord.fromSnapshot(s));

  static MapasRecord fromSnapshot(DocumentSnapshot snapshot) => MapasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MapasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapasRecordData({
  LatLng? latitudeLogitude,
  String? rua,
  String? bairro,
  String? cidade,
  String? estado,
  String? pais,
  DocumentReference? user,
  String? nomeDaEstetica,
  String? whatsapp,
  String? email,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'latitude_logitude': latitudeLogitude,
      'Rua': rua,
      'bairro': bairro,
      'cidade': cidade,
      'estado': estado,
      'pais': pais,
      'user': user,
      'Nome_da_estetica': nomeDaEstetica,
      'whatsapp': whatsapp,
      'email': email,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}
