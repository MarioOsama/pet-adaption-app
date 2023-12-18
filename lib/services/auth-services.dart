import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pet_adaption_app/models/user.dart';

class AuthServices {
  final FirebaseAuth _firebase = FirebaseAuth.instance;

  signInWithGoogle() async {
    // begin signing in process
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // capture auth details from request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // create a new user credential for a new user
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // get user email
    final userGmail = googleUser.email;

    // create user doc in firebase firestore
    final userId = googleUser.id;

    await FirebaseFirestore.instance.collection("users").doc(userId).set({
      "email": userGmail,
      "username": googleUser.displayName,
      "city": "",
      "phone": "",
    });

    // succeed signing in
    return await _firebase.signInWithCredential(credential);
    // }
  }

  signInWithEmailAndPassword(AppUser user) async {
    // begin signing in process
    try {
      return await _firebase.signInWithEmailAndPassword(
        email: user.email,
        password: user.password!,
      );
    } on FirebaseAuthException catch (e) {
      // if account does not exist
      return e.code;
    }
  }

  signUpWithEmailAndPassword(AppUser newUser) async {
    // begin signing up process
    try {
      // check if the phone in the database
      final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("users")
          .where("phone", isEqualTo: newUser.phone)
          .limit(1)
          .get();

      // return an error message if phone number already exists
      if (querySnapshot.docs.isNotEmpty) {
        return "Phone number already exists, please sign up with a different phone number";
      }

      final UserCredential userCredential =
          await _firebase.createUserWithEmailAndPassword(
        email: newUser.email,
        password: newUser.password!,
      );

      // create user
      final User user = userCredential.user!;

      // get user id
      final String userId = user.uid;

      // create user doc in firebase firestore
      return await FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .set({
        "email": newUser.email,
        "username": newUser.username,
        "phone": newUser.phone,
        "city": newUser.city,
      });
    } on FirebaseAuthException catch (e) {
      // if account does not exist
      return e.code;
    }
  }

  logout() {
    // logout the user
    _firebase.signOut();
  }
}
