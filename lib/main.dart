import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unit_testing/fakedatabase_methods.dart';

import 'models/fake_model_firebase.dart';

main() async {
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCL4tGN07LDhCP3AkPRt4jTD9OxFFGFsNU",
          authDomain: "sampleprojectmockito.firebaseapp.com",
          projectId: "sampleprojectmockito",
          storageBucket: "sampleprojectmockito.appspot.com",
          messagingSenderId: "766902083288",
          appId: "1:766902083288:web:dba7597690908f7ee481ad",
          measurementId: "G-XZN1RJERPK"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Testing with mockito',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Unit Testing',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // getUser();
    super.initState();
  }

 

  String _message = '';

  // void setMessage(String message) {
  //   setState(() {
  //     _message = message;
  //   });
  // }

  // Future<void> _sendAnalyticsEvent() async {
  //   // Custome event
  //   await widget.analytics.logEvent(name: "screen_view", parameters: {
  //     'screen_name': 'pranay',
  //     'page_title': 'page titlee',
  //   });
  //   setMessage('logEvent succeeded');
  // }

  // // Login part
  // Future<void> _testSetUserId() async {
  //   await widget.analytics.setUserId(id: 'some-user');
  //   setMessage('setUserId succeeded');
  // }

  // Future<void> _testSetCurrentScreen() async {
  //   await widget.analytics.setCurrentScreen(
  //     screenName: 'Pranay',
  //     screenClassOverride: 'hggd',
  //   );
  //   setMessage('setCurrentScreen succeeded');
  // }

  // Future<void> _testSetAnalyticsCollectionEnabled() async {
  //   await widget.analytics.setAnalyticsCollectionEnabled(false);
  //   await widget.analytics.setAnalyticsCollectionEnabled(true);
  //   setMessage('setAnalyticsCollectionEnabled succeeded');
  // }

  // Future<void> _testSetSessionTimeoutDuration() async {
  //   await widget.analytics
  //       .setSessionTimeoutDuration(const Duration(milliseconds: 20000));
  //   setMessage('setSessionTimeoutDuration succeeded');
  // }

  // Future<void> _testSetUserProperty() async {
  //   await widget.analytics.setUserProperty(name: 'regular', value: 'indeed');
  //   setMessage('setUserProperty succeeded');
  // }

  // AnalyticsEventItem itemCreator() {
  //   return AnalyticsEventItem(
  //     affiliation: 'affil',
  //     coupon: 'coup',
  //     creativeName: 'creativeName',
  //     creativeSlot: 'creativeSlot',
  //     discount: 2.22,
  //     index: 3,
  //     itemBrand: 'itemBrand',
  //     itemCategory: 'itemCategory',
  //     itemCategory2: 'itemCategory2',
  //     itemCategory3: 'itemCategory3',
  //     itemCategory4: 'itemCategory4',
  //     itemCategory5: 'itemCategory5',
  //     itemId: 'itemId',
  //     itemListId: 'itemListId',
  //     itemListName: 'itemListName',
  //     itemName: 'itemName',
  //     itemVariant: 'itemVariant',
  //     locationId: 'locationId',
  //     price: 9.99,
  //     currency: 'USD',
  //     promotionId: 'promotionId',
  //     promotionName: 'promotionName',
  //     quantity: 1,
  //   );
  // }

  // Future<void> _testAllEventTypes() async {
  //   await widget.analytics.logAddPaymentInfo();
  //   await widget.analytics.logAddToCart(
  //     currency: 'USD',
  //     value: 123,
  //     items: [itemCreator(), itemCreator()],
  //   );
  //   await widget.analytics.logAddToWishlist();
  //   await widget.analytics.logAppOpen();
  //   await widget.analytics.logBeginCheckout(
  //     value: 123,
  //     currency: 'USD',
  //     items: [itemCreator(), itemCreator()],
  //   );
  //   await widget.analytics.logCampaignDetails(
  //     source: 'source',
  //     medium: 'medium',
  //     campaign: 'campaign',
  //     term: 'term',
  //     content: 'content',
  //     aclid: 'aclid',
  //     cp1: 'cp1',
  //   );
  //   await widget.analytics.logEarnVirtualCurrency(
  //     virtualCurrencyName: 'bitcoin',
  //     value: 345.66,
  //   );

  //   await widget.analytics.logGenerateLead(
  //     currency: 'USD',
  //     value: 123.45,
  //   );
  //   await widget.analytics.logJoinGroup(
  //     groupId: 'test group id',
  //   );
  //   await widget.analytics.logLevelUp(
  //     level: 5,
  //     character: 'witch doctor',
  //   );
  //   await widget.analytics.logLogin(loginMethod: 'login');
  //   await widget.analytics.logPostScore(
  //     score: 1000000,
  //     level: 70,
  //     character: 'tiefling cleric',
  //   );
  //   await widget.analytics
  //       .logPurchase(currency: 'USD', transactionId: 'transaction-id');
  //   await widget.analytics.logSearch(
  //     searchTerm: 'hotel',
  //     numberOfNights: 2,
  //     numberOfRooms: 1,
  //     numberOfPassengers: 3,
  //     origin: 'test origin',
  //     destination: 'test destination',
  //     startDate: '2015-09-14',
  //     endDate: '2015-09-16',
  //     travelClass: 'test travel class',
  //   );
  //   await widget.analytics.logSelectContent(
  //     contentType: 'test content type',
  //     itemId: 'test item id',
  //   );
  //   await widget.analytics.logSelectPromotion(
  //     creativeName: 'promotion name',
  //     creativeSlot: 'promotion slot',
  //     items: [itemCreator()],
  //     locationId: 'United States',
  //   );
  //   await widget.analytics.logSelectItem(
  //     items: [itemCreator(), itemCreator()],
  //     itemListName: 't-shirt',
  //     itemListId: '1234',
  //   );
  //   await widget.analytics.logScreenView(
  //     screenName: 'tabs-page',
  //   );
  //   await widget.analytics.logViewCart(
  //     currency: 'USD',
  //     value: 123,
  //     items: [itemCreator(), itemCreator()],
  //   );
  //   await widget.analytics.logShare(
  //     contentType: 'test content type',
  //     itemId: 'test item id',
  //     method: 'facebook',
  //   );
  //   await widget.analytics.logSignUp(
  //     signUpMethod: 'test sign up method',
  //   );
  //   await widget.analytics.logSpendVirtualCurrency(
  //     itemName: 'test item name',
  //     virtualCurrencyName: 'bitcoin',
  //     value: 34,
  //   );
  //   await widget.analytics.logViewPromotion(
  //     creativeName: 'promotion name',
  //     creativeSlot: 'promotion slot',
  //     items: [itemCreator()],
  //     locationId: 'United States',
  //     promotionId: '1234',
  //     promotionName: 'big sale',
  //   );
  //   await widget.analytics.logRefund(
  //     currency: 'USD',
  //     value: 123,
  //     items: [itemCreator(), itemCreator()],
  //   );
  //   await widget.analytics.logTutorialBegin();
  //   await widget.analytics.logTutorialComplete();
  //   await widget.analytics.logUnlockAchievement(id: 'all Firebase API covered');
  //   await widget.analytics.logViewItem(
  //     currency: 'usd',
  //     value: 1000,
  //     items: [itemCreator()],
  //   );
  //   await widget.analytics.logViewItemList(
  //     itemListId: 't-shirt-4321',
  //     itemListName: 'green t-shirt',
  //     items: [itemCreator()],
  //   );
  //   await widget.analytics.logViewSearchResults(
  //     searchTerm: 'test search term',
  //   );
  //   setMessage('All standard events logged successfully');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const [
          Text("Unit testing")
          // MaterialButton(
          //   onPressed: _sendAnalyticsEvent,
          //   child: const Text('Test logEvent'),
          // ),
          // MaterialButton(
          //   onPressed: _testAllEventTypes,
          //   child: const Text('Test standard event types'),
          // ),
          // MaterialButton(
          //   onPressed: _testSetUserId,
          //   child: const Text('Test setUserId'),
          // ),
          // MaterialButton(
          //   onPressed: _testSetCurrentScreen,
          //   child: const Text('Test setCurrentScreen'),
          // ),
          // MaterialButton(
          //   onPressed: _testSetAnalyticsCollectionEnabled,
          //   child: const Text('Test setAnalyticsCollectionEnabled'),
          // ),
          // MaterialButton(
          //   onPressed: _testSetSessionTimeoutDuration,
          //   child: const Text('Test setSessionTimeoutDuration'),
          // ),
          // MaterialButton(
          //   onPressed: _testSetUserProperty,
          //   child: const Text('Test setUserProperty'),
          // ),
          // Text(
          //   _message,
          //   style: const TextStyle(color: Color.fromARGB(255, 0, 155, 0)),
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (BuildContext context) {
      //           return const SampleWidget();
      //         },
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.tab),
      // ),
    );
  }
}
