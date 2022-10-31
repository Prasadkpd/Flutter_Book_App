import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  late String bookName;
  late String authorName;

  late DocumentReference documentReference;

  Book({required this.bookName, required this.authorName});

  Book.fromMap(Map<String, dynamic> map, {required this.documentReference}) {
    bookName = map["bookName"];
    authorName = map["authorName"];
  }

  Book.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, documentReference: snapshot.reference);

  toJson() {
    return {'bookName': bookName, 'authorName': authorName};
  }
}
