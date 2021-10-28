import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/src/model/Entry.dart';
import 'package:flutter/cupertino.dart';

class FirestoreService{

  FirebaseFirestore _db= FirebaseFirestore.instance;

    //get
 Stream<List<Entry>> getEntries(){
   return _db
       .collection('entries')
       .where('date',isGreaterThan: DateTime.now().add(Duration(days: -30)).toIso8601String())
       .snapshots()
       .map((snapshot)=>snapshot.docs
        .map((doc) => Entry.fromJson(doc.data()))
       .toList()
   );
 }

  //create

Future<void> setEntry(Entry entry){
   var options = SetOptions(merge: true);
   return _db
       .collection('entries')
       .doc(entry.entryId)
       .set(entry.toMap(),options);

}

  //update

  //delete

  Future<void> removeEntry(String entryId){
    return _db
        .collection('entries')
        .doc(entryId)
        .delete();
  }

}