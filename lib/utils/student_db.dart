// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

create(String colname, docname,name,standard, number) async {
  await FirebaseFirestore.instance.collection(colname)
  .doc(docname)
  .set({
    
        'name' : name,
        'class': standard,
        'mobile' : number,
   
     },
     );
      print('data has been uplaoded successfully');
}
