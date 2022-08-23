import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BioplusApiLoginFirebaseUser {
  BioplusApiLoginFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BioplusApiLoginFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BioplusApiLoginFirebaseUser> bioplusApiLoginFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BioplusApiLoginFirebaseUser>(
            (user) => currentUser = BioplusApiLoginFirebaseUser(user));
