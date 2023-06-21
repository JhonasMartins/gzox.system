import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TesteRecord extends FirestoreRecord {
  TesteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Email_do_dono_gzox" field.
  String? _emailDoDonoGzox;
  String get emailDoDonoGzox => _emailDoDonoGzox ?? '';
  bool hasEmailDoDonoGzox() => _emailDoDonoGzox != null;

  // "Marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "Modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "Nome_do_dono_gzox" field.
  String? _nomeDoDonoGzox;
  String get nomeDoDonoGzox => _nomeDoDonoGzox ?? '';
  bool hasNomeDoDonoGzox() => _nomeDoDonoGzox != null;

  // "Placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "Quilometragem" field.
  int? _quilometragem;
  int get quilometragem => _quilometragem ?? 0;
  bool hasQuilometragem() => _quilometragem != null;

  // "Whatsapp_do_dono_gzox" field.
  int? _whatsappDoDonoGzox;
  int get whatsappDoDonoGzox => _whatsappDoDonoGzox ?? 0;
  bool hasWhatsappDoDonoGzox() => _whatsappDoDonoGzox != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _emailDoDonoGzox = snapshotData['Email_do_dono_gzox'] as String?;
    _marca = snapshotData['Marca'] as String?;
    _modelo = snapshotData['Modelo'] as String?;
    _nomeDoDonoGzox = snapshotData['Nome_do_dono_gzox'] as String?;
    _placa = snapshotData['Placa'] as String?;
    _quilometragem = snapshotData['Quilometragem'] as int?;
    _whatsappDoDonoGzox = snapshotData['Whatsapp_do_dono_gzox'] as int?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teste');

  static Stream<TesteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TesteRecord.fromSnapshot(s));

  static Future<TesteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TesteRecord.fromSnapshot(s));

  static TesteRecord fromSnapshot(DocumentSnapshot snapshot) => TesteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TesteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TesteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TesteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TesteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTesteRecordData({
  String? emailDoDonoGzox,
  String? marca,
  String? modelo,
  String? nomeDoDonoGzox,
  String? placa,
  int? quilometragem,
  int? whatsappDoDonoGzox,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email_do_dono_gzox': emailDoDonoGzox,
      'Marca': marca,
      'Modelo': modelo,
      'Nome_do_dono_gzox': nomeDoDonoGzox,
      'Placa': placa,
      'Quilometragem': quilometragem,
      'Whatsapp_do_dono_gzox': whatsappDoDonoGzox,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}
