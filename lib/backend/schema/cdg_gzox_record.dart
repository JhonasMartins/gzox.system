import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CdgGzoxRecord extends FirestoreRecord {
  CdgGzoxRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codigos" field.
  String? _codigos;
  String get codigos => _codigos ?? '';
  bool hasCodigos() => _codigos != null;

  void _initializeFields() {
    _codigos = snapshotData['codigos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cdg_gzox');

  static Stream<CdgGzoxRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CdgGzoxRecord.fromSnapshot(s));

  static Future<CdgGzoxRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CdgGzoxRecord.fromSnapshot(s));

  static CdgGzoxRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CdgGzoxRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CdgGzoxRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CdgGzoxRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CdgGzoxRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CdgGzoxRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCdgGzoxRecordData({
  String? codigos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigos': codigos,
    }.withoutNulls,
  );

  return firestoreData;
}
