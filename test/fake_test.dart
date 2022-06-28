// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/models/fake_model.dart';
import 'package:flutter_unit_testing/models/fake_model_firebase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'fake_test.mocks.dart';
import 'repositry/fake_api_repo.dart';

@GenerateMocks([FakeMockTest])
void main() {
  // This blow class is generated using build runner command
  late MockFakeMockTest fakeMockTest;
  late FakeMockApi mockApi;

  setUpAll(() {
    // This will setup the mock object
    fakeMockTest = MockFakeMockTest();
    mockApi = FakeMockApi();
  });

  group("To test MockFakeMockTest --", () {
    test('fake model firebase ...', () async {
      when(fakeMockTest.getUser()).thenAnswer((_) async => []);
      // verifyNever(await fakeMockTest.getUser());

      // expect(await fakeMockTest.getUser(), []);
      expect(await fakeMockTest.getUser(), isA<List<SamplefirbaseData>>());
    });
    test("To verify FakeAPi Test ", () async {
      when(fakeMockTest.getUserResult()).thenAnswer((_) async => []);
      /* 
        Verify that a method on a mock object was never called with the given arguments.
        Call a method on a mock object within a verifyNever call. 
        For example: cat.eatFood("chicken");
        verifyNever(cat.eatFood("fish")); Mockito will pass the current test case, as 
        cat.eatFood has not been called with "chicken"
      */
      verifyNever(await fakeMockTest.getUserResult());
      // // final result = await mockApi.getUserResult();
      // // This below line will check if the result isA<List<FakeModel>>()

      expect(await fakeMockTest.getUserResult(), isA<List<FakeModel>>());
    });
  });

  // when(mockFakeApi.getUserResult()).thenAnswer((_) {
  //   return
  // }),
}
