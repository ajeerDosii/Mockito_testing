import 'package:cloud_firestore/cloud_firestore.dart';

class FakeFirebaseMethods {
   getUserByName(String name) async {
    final result = await FirebaseFirestore.instance
        .collection("users")
        .where("name", isEqualTo: name)
        .get();
    return result.docs.map((e) => e.data());
  }
}
