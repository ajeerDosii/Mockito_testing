// To call API


import 'package:flutter_unit_testing/fakedatabase_methods.dart';
import 'package:flutter_unit_testing/models/fake_model.dart';
import 'package:flutter_unit_testing/models/fake_model_firebase.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

// To create methods in abstract class
abstract class FakeAbstract {
  Future<List<FakeModel>> getUserResult();
  Future<List<SamplefirbaseData>> getUser();
  
}
FakeFirebaseMethods fakeFirebaseMethods = FakeFirebaseMethods();
class FakeMockApi extends FakeAbstract {
  // To get user list
  @override
  Future<List<FakeModel>> getUserResult() async {
    try {
      final result = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      return fakeModelFromJson(result.body);
    } catch (e) {
      rethrow;
    }
  }
  @override
  Future<List<SamplefirbaseData>> getUser() async {
    final result = await fakeFirebaseMethods.getUserByName("Ajeer");
    // return fakeModelfromFirebase(result);
    return samplefirbaseDataFromJson(result);
  }
  
 
  

  bool getVlaue() {
    return true;
  }
}

// This below class takes object of mock and it will implements the
// method inside of our FakeMockAPI
class FakeMockTest extends Mock implements FakeMockApi {}
