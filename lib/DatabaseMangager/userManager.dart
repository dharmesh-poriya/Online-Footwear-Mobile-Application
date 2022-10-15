import 'package:cloud_firestore/cloud_firestore.dart/';
class UserManager{
  final CollectionReference userdata = FirebaseFirestore.instance.collection("User");



}