import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticlesRecord extends FirestoreRecord {
  ArticlesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "publisher" field.
  String? _publisher;
  String get publisher => _publisher ?? '';
  bool hasPublisher() => _publisher != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _link = snapshotData['link'] as String?;
    _title = snapshotData['title'] as String?;
    _topic = snapshotData['topic'] as String?;
    _publisher = snapshotData['publisher'] as String?;
    _info = snapshotData['info'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('articles')
          : FirebaseFirestore.instance.collectionGroup('articles');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('articles').doc(id);

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticlesRecord.fromSnapshot(s));

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticlesRecord.fromSnapshot(s));

  static ArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticlesRecordData({
  DateTime? date,
  String? image,
  String? link,
  String? title,
  String? topic,
  String? publisher,
  String? info,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'image': image,
      'link': link,
      'title': title,
      'topic': topic,
      'publisher': publisher,
      'info': info,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticlesRecordDocumentEquality implements Equality<ArticlesRecord> {
  const ArticlesRecordDocumentEquality();

  @override
  bool equals(ArticlesRecord? e1, ArticlesRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.image == e2?.image &&
        e1?.link == e2?.link &&
        e1?.title == e2?.title &&
        e1?.topic == e2?.topic &&
        e1?.publisher == e2?.publisher &&
        e1?.info == e2?.info;
  }

  @override
  int hash(ArticlesRecord? e) => const ListEquality().hash(
      [e?.date, e?.image, e?.link, e?.title, e?.topic, e?.publisher, e?.info]);

  @override
  bool isValidKey(Object? o) => o is ArticlesRecord;
}
