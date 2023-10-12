import 'package:firebase_database/firebase_database.dart';

class UserModal {
  String? phone;
  String? name;
  String? id;
  String? email;

  UserModal({this.phone, this.name, this.id, this.email});

  UserModal.fromSnapshot(DataSnapshot snap){

    phone = (snap.value as dynamic)["phone"];
    name = (snap.value as dynamic)["name"];
    id = snap.key;
    email = (snap.value as dynamic)["email"];
  }
}