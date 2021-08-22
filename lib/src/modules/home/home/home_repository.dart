import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_user_model.dart';

class HomeRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  var userUid = FirebaseAuth.instance.currentUser!.uid;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  /*
  Future<void> userData() async {
    var user = auth.currentUser;
    user!.uid;
  }*/

  List<UserData> _userListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      //print(doc.data);
      return UserData(
        name: doc['name'] ?? '',
        telephone: doc['strength'] ?? 0,
        policy: doc['sugars'] ?? '0'
      );
    }).toList();
  }

  

  // userData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: userUid,
      name: snapshot['name'],
      telephone: snapshot['telephone'],
      policy: snapshot['policy'],
    );
  }

  Stream<List<UserData>> get brews {
    return users.snapshots()
      .map(_userListFromSnapshot);
  }


  // pega o user doc stream
  Stream<UserData> get userData {
    return users.doc(userUid)
      .snapshots()
      .map(_userDataFromSnapshot);
  }
}
