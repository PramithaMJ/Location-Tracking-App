import 'package:firebase_database/firebase_database.dart';
import 'package:location_tracking_app/global/global.dart';
import 'package:location_tracking_app/models/user_model.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() async {
    currentUser = firebaseAuth.currentUser;
    DatabaseReference userRef =
        FirebaseDatabase.instance.ref().child("users").child(currentUser!.uid);

    userRef.once().then(
      (snap) {
        if (snap.snapshot.value != null) {
          userModelCurrentInfo = UserModel.fromSnapShot(snap.snapshot);
        }
      },
    );
  }
}
