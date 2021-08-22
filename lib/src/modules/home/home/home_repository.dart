import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raroacademy_budget_techninjas/src/modules/login/create_account/create_account_user_model.dart';
import 'package:raroacademy_budget_techninjas/src/shared/models/transaction_model.dart';

class HomeRepository {
  FirebaseAuth auth = FirebaseAuth.instance;
  var userUid = FirebaseAuth.instance.currentUser!.uid;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference transactions =
      FirebaseFirestore.instance.collection('transactions');

  // início funções de coleta de dados do usuário
  List<UserData> _userListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return UserData(
          name: doc['name'] ?? '',
          telephone: doc['strength'] ?? 0,
          policy: doc['sugars'] ?? '0');
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
    return users.snapshots().map(_userListFromSnapshot);
  }

  // pega o user doc stream
  Stream<UserData> get userData {
    return users.doc(userUid).snapshots().map(_userDataFromSnapshot);
  }

  // fim das funções de coleta de dados do usuário

  // inicio funções de coleta de dados das transações
  TransactionModel _transactionModelFromSnapshot(DocumentSnapshot snapshot) {
    return TransactionModel(
      userId: userUid,
      value: snapshot['value'],
      date: snapshot['createdAt'],
      category: snapshot['category'],
      type: snapshot['type'],
    );
  }

  List<TransactionModel> _transactionListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return TransactionModel(
          value: doc['value'] ?? 0,
          date: doc['createdAt'] ?? '',
          category: doc['category'] ?? '',
          type: doc['type'] ?? '');
    }).toList();
  }

  Stream<List<TransactionModel>> get transactionsModel {
    return transactions
      .snapshots()
      .map(_transactionListFromSnapshot);
  }

  Stream<TransactionModel> get transactionData {
    return transactions
      .doc(userUid)
      .snapshots()
      .map(_transactionModelFromSnapshot);
  }
}
