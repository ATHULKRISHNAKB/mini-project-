import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HeliFirebaseUser {
  HeliFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

HeliFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HeliFirebaseUser> heliFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HeliFirebaseUser>(
      (user) {
        currentUser = HeliFirebaseUser(user);
        return currentUser!;
      },
    );
