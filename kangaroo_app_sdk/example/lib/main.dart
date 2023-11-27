import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kangaroo_app_sdk/get_crm_fields/get_crm_fields_api.dart';
import 'package:kangaroo_app_sdk/kangaroo_app_sdk.dart';
import 'package:kangaroo_app_sdk/user_authentication/user_authentication_api.dart'
    as UserAuthenticationApi;
import 'package:kangaroo_app_sdk/user_business_offers/user_business_offers_api.dart';
import 'package:kangaroo_app_sdk/user_pin_update/user_pin_update_api.dart'
    as UserPinUpdateApi;
import 'package:kangaroo_app_sdk/user_profile/user_profile_api.dart'
    as UserProfileApi;
import 'package:kangaroo_app_sdk/user_transaction_history/user_transaction_history_api.dart'
    as UserTransactionHistoryApi;

void main() {
  runApp(MyApp());
  KangarooAppSdk.initializeSdk(
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImJ1c2luZXNzSWQiOiIxMjUiLCJicmFuY2hJZCI6IjE2NCIsImNvYWxpdGlvbiI6IjAiLCJjb25nbG9tZXJhdGUiOiIwIn19.d67S2oT7E-HHJ8v-GhuLSkY_SEPWJVnf3n5Pl_U16KE',
    '10125648',
    'E1ahTZCex75kNOM4VDOMflwmXaCKaR6KzEJ6akYW',
    'development',
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  authenticateUser() {
    debugPrint('authenticating...');
    UserAuthenticationApi.UserAuthenticationApi.authenticateUser(
      "support@kangaroorewards.com",
      "1111",
    );
  }

  getUserProfile() {
    UserProfileApi.UserProfileApi.getUserProfile();
  }

  getCrmFields() async {
    GetCrmFieldsApi.getCrmFields().then((value) {
      value?.whenOrNull(success: (success) {
        success?.data?.forEach((element) {
          debugPrint('success crm fields: ${element.label}');
        });
      }, error: (code, msg) {
        debugPrint('failed to get crm fields; $msg');
      });
    });
  }

  getOffers() async {
    final offerResult = await UserBusinessOffersApi.getUserBusinessOffers(
      businessId: "11eaaa7a0e421b6ba65946e6f4ffefae",
    );

    offerResult?.whenOrNull(
      success: (success) {
        debugPrint('offer result success');
        final offer = success?.included?.offers?.first;
        debugPrint('offer result: ${offer?.title}');
      },
      unauthorized: (_, __) {
        debugPrint('offer result unauthorized');
      },
      error: (errorCode, error) {
        debugPrint('offer result error: $error');
      },
    );
  }

  getTransactions() {
    UserTransactionHistoryApi.UserTransactionHistoryApi
        .getUserTransactionHistory();
  }

  resetPin() {
    UserPinUpdateApi.UserPinUpdateApi.updatePin(
        updatePinRequest: UserPinUpdateApi.UpdatePinRequest(pinCode: "1111"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kangaroo SDK Sandbox'),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              MaterialButton(
                onPressed: authenticateUser,
                color: Colors.purple.shade300,
                height: 100,
                child: Center(
                  child: Text(
                    'authenticate user',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: getUserProfile,
                color: Colors.green,
                height: 100,
                child: Center(
                  child: Text(
                    'get user profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: getOffers,
                color: Colors.yellow,
                height: 100,
                child: Center(
                  child: Text(
                    'get user offers',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: getOffers,
                color: Colors.red.shade300,
                height: 100,
                child: Center(
                  child: Text(
                    'get user transactions',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: resetPin,
                color: Colors.yellow.shade800,
                height: 100,
                child: Center(
                  child: Text(
                    'reset pin',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: getCrmFields,
                color: Colors.red.shade800,
                height: 100,
                child: Center(
                  child: Text(
                    'get crm fields',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension RandomListItem<T> on List<T> {
  T randomItem() {
    return this[Random().nextInt(length)];
  }
}
