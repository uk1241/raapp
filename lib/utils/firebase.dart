import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class datbase {
  late FirebaseFirestore firestore;
  initiliase()  async {
       
        firestore=FirebaseFirestore.instance;
  }

}
