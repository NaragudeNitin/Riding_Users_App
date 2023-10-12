import 'package:drive_users_app/modals/user_modal.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;

UserModal? userModalCurrentInfo;
