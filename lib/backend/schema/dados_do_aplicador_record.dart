import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosDoAplicadorRecord extends FirestoreRecord {
  DadosDoAplicadorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nome_do_aplicador" field.
  String? _nomeDoAplicador;
  String get nomeDoAplicador => _nomeDoAplicador ?? '';
  bool hasNomeDoAplicador() => _nomeDoAplicador != null;

  // "Whatsapp_do_aplicador" field.
  String? _whatsappDoAplicador;
  String get whatsappDoAplicador => _whatsappDoAplicador ?? '';
  bool hasWhatsappDoAplicador() => _whatsappDoAplicador != null;

  // "Foto_do_aplicador" field.
  String? _fotoDoAplicador;
  String get fotoDoAplicador => _fotoDoAplicador ?? '';
  bool hasFotoDoAplicador() => _fotoDoAplicador != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _nomeDoAplicador = snapshotData['Nome_do_aplicador'] as String?;
    _whatsappDoAplicador = snapshotData['Whatsapp_do_aplicador'] as String?;
    _fotoDoAplicador = snapshotData['Foto_do_aplicador'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dados_do_aplicador');

  static Stream<DadosDoAplicadorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadosDoAplicadorRecord.fromSnapshot(s));

  static Future<DadosDoAplicadorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DadosDoAplicadorRecord.fromSnapshot(s));

  static DadosDoAplicadorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DadosDoAplicadorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadosDoAplicadorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadosDoAplicadorRecord._(reference, mapFromFirestore(data));

  static DadosDoAplicadorRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      DadosDoAplicadorRecord.getDocumentFromData(
        {
          'Nome_do_aplicador': snapshot.data['Nome_do_aplicador'],
          'Whatsapp_do_aplicador': snapshot.data['Whatsapp_do_aplicador'],
          'Foto_do_aplicador': snapshot.data['Foto_do_aplicador'],
          'user': safeGet(
            () => toRef(snapshot.data['user']),
          ),
        },
        DadosDoAplicadorRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<DadosDoAplicadorRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'dados_do_aplicador',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'DadosDoAplicadorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadosDoAplicadorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadosDoAplicadorRecordData({
  String? nomeDoAplicador,
  String? whatsappDoAplicador,
  String? fotoDoAplicador,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome_do_aplicador': nomeDoAplicador,
      'Whatsapp_do_aplicador': whatsappDoAplicador,
      'Foto_do_aplicador': fotoDoAplicador,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}
