import 'dart:developer';

import 'package:drive_users_app/global/global.dart';
import 'package:drive_users_app/modals/user_modal.dart';
import 'package:firebase_database/firebase_database.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() async {
    currentFirebaseUser = fAuth.currentUser;
    DatabaseReference userRef = FirebaseDatabase.instance
        .ref()
        .child("users")
        .child(currentFirebaseUser!.uid);

    log(currentFirebaseUser!.uid.toString());
    await userRef.once().then((snap) {
      log('message');
      if (snap.snapshot.value != null) {
        userModalCurrentInfo = UserModal.fromSnapshot(
            snap.snapshot); //here we are getting current online user info
        log("Name: ${userModalCurrentInfo!.name}");
      } else {
        log('Namae field is semty');
      }
    }).catchError((error) {
      log("Error reading user data: $error");
    });
  }
}
