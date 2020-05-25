import 'package:cloud_firestore/cloud_firestore.dart';

class User {

  final String uid;
  final String name;
  final String profileImageUrl;
  final String email;
  final String bio;
  final String college;

  User({ 
    this.uid, 
    this.name, 
    this.profileImageUrl, 
    this.email, 
    this.bio,
    this.college 
  });  

  factory User.fromDoc(DocumentSnapshot doc) {
    return User(
      uid: doc.documentID,
      name: doc['name'],
      profileImageUrl: doc['profileImageUrl'],
      email: doc['email'],
      bio: doc['bio'] ?? '',
      college: doc['college'] ?? '',
    );
  }
}