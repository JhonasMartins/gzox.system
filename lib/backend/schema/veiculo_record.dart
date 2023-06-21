import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VeiculoRecord extends FirestoreRecord {
  VeiculoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "Modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "Quilometragem" field.
  String? _quilometragem;
  String get quilometragem => _quilometragem ?? '';
  bool hasQuilometragem() => _quilometragem != null;

  // "Email_do_dono_gzox" field.
  String? _emailDoDonoGzox;
  String get emailDoDonoGzox => _emailDoDonoGzox ?? '';
  bool hasEmailDoDonoGzox() => _emailDoDonoGzox != null;

  // "Nome_do_dono_gzox" field.
  String? _nomeDoDonoGzox;
  String get nomeDoDonoGzox => _nomeDoDonoGzox ?? '';
  bool hasNomeDoDonoGzox() => _nomeDoDonoGzox != null;

  // "Whatsapp_do_dono_gzox" field.
  String? _whatsappDoDonoGzox;
  String get whatsappDoDonoGzox => _whatsappDoDonoGzox ?? '';
  bool hasWhatsappDoDonoGzox() => _whatsappDoDonoGzox != null;

  // "Placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "Tipo_do_veiculo" field.
  String? _tipoDoVeiculo;
  String get tipoDoVeiculo => _tipoDoVeiculo ?? '';
  bool hasTipoDoVeiculo() => _tipoDoVeiculo != null;

  void _initializeFields() {
    _marca = snapshotData['Marca'] as String?;
    _modelo = snapshotData['Modelo'] as String?;
    _quilometragem = snapshotData['Quilometragem'] as String?;
    _emailDoDonoGzox = snapshotData['Email_do_dono_gzox'] as String?;
    _nomeDoDonoGzox = snapshotData['Nome_do_dono_gzox'] as String?;
    _whatsappDoDonoGzox = snapshotData['Whatsapp_do_dono_gzox'] as String?;
    _placa = snapshotData['Placa'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _tipoDoVeiculo = snapshotData['Tipo_do_veiculo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('veiculo');

  static Stream<VeiculoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VeiculoRecord.fromSnapshot(s));

  static Future<VeiculoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VeiculoRecord.fromSnapshot(s));

  static VeiculoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VeiculoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VeiculoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VeiculoRecord._(reference, mapFromFirestore(data));

  static VeiculoRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      VeiculoRecord.getDocumentFromData(
        {
          'Marca': snapshot.data['Marca'],
          'Modelo': snapshot.data['Modelo'],
          'Quilometragem': snapshot.data['Quilometragem'],
          'Email_do_dono_gzox': snapshot.data['Email_do_dono_gzox'],
          'Nome_do_dono_gzox': snapshot.data['Nome_do_dono_gzox'],
          'Whatsapp_do_dono_gzox': snapshot.data['Whatsapp_do_dono_gzox'],
          'Placa': snapshot.data['Placa'],
          'user': safeGet(
            () => toRef(snapshot.data['user']),
          ),
          'Tipo_do_veiculo': snapshot.data['Tipo_do_veiculo'],
        },
        VeiculoRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<VeiculoRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'veiculo',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'VeiculoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VeiculoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVeiculoRecordData({
  String? marca,
  String? modelo,
  String? quilometragem,
  String? emailDoDonoGzox,
  String? nomeDoDonoGzox,
  String? whatsappDoDonoGzox,
  String? placa,
  DocumentReference? user,
  String? tipoDoVeiculo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Marca': marca,
      'Modelo': modelo,
      'Quilometragem': quilometragem,
      'Email_do_dono_gzox': emailDoDonoGzox,
      'Nome_do_dono_gzox': nomeDoDonoGzox,
      'Whatsapp_do_dono_gzox': whatsappDoDonoGzox,
      'Placa': placa,
      'user': user,
      'Tipo_do_veiculo': tipoDoVeiculo,
    }.withoutNulls,
  );

  return firestoreData;
}
