import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;
final userRef = _firestore.collection('users');