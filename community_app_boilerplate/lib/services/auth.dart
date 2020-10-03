import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:communityappboilerplate/services/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:github_sign_in/github_sign_in.dart'; //TODO

//TODO: import '../secret.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
final Firestore _firestore = Firestore.instance;

class AuthService {
  User _userFromFirebaseUser(FirebaseUser user) {
    print(user);
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      _userFromFirebaseUser(user);
      return user.uid;
    } catch (e) {
      print(e.toString());
      return e.code;
    }
  }

  Future registerWithEmailAndPassword(
      String name, String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      if (user != null) {
        _firestore.collection('/users').document(user.uid).setData({
          'name': name,
          'email': email,
          'profileImageUrl': '',
        });
      }
      _userFromFirebaseUser(user);
      return user.uid;
    } catch (e) {
      print(e.toString());
      return e.code;
    }
  }

  String name;
  String email;
  String imageUrl;

  Future<String> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    // Checking if email and name is null
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoUrl != null);

    name = user.displayName;
    email = user.email;
    imageUrl = user.photoUrl;

    if (user != null) {
      _firestore.collection('/users').document(user.uid).setData({
        'name': name,
        'email': email,
        'profileImageUrl': imageUrl,
      });
    }
    // Only taking the first part of the name, i.e., First Name
    // if (name.contains(" ")) {
    //   name = name.substring(0, name.indexOf(" "));
    // }

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

    _userFromFirebaseUser(user);

    return user.uid;
  }

  void signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Sign Out");
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//TODO:
  // Github
  /*
  Future<AuthResult> signInWithGitHub(BuildContext context) async {
    // Create a GitHubSignIn instance
    final GitHubSignIn gitHubSignIn = GitHubSignIn(
        clientId: CLIENT_ID,
        clientSecret: CLIENT_SECRET,
        redirectUrl: REDIRECT_URL);

    // Trigger the sign-in flow
    final result = await gitHubSignIn.signIn(context);

    // Create a credential from the access token
    final AuthCredential githubAuthCredential =
        GithubAuthProvider.getCredential(token: result.token);

    // Once signed in, return the UserCredential
    //
    var user =
        await FirebaseAuth.instance.signInWithCredential(githubAuthCredential);

    name = user.user.displayName;
    email = user.user.email;
    imageUrl = user.user.photoUrl;

    if (user != null) {
      await _firestore.collection('/users').document(user.user.uid).setData({
        'name': name,
        'email': email,
        'profileImageUrl': imageUrl,
      });
    }

    assert(!user.user.isAnonymous);
    assert(await user.user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.user.uid == currentUser.uid);

    _userFromFirebaseUser(user.user);
    return user;
  }*/
}
