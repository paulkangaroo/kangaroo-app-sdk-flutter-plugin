import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kangaroo_app_sdk/user_authentication/user_authentication_api.dart';
import 'package:kangaroo_app_sdk/user_offers/user_offers_api.dart';
import 'package:kangaroo_app_sdk/user_pin_update/user_pin_update_api.dart';
import 'package:kangaroo_app_sdk/user_profile/user_profile_api.dart';
import 'package:kangaroo_app_sdk/user_rewards/user_rewards_api.dart';
import 'package:kangaroo_app_sdk/user_transaction_history/user_transaction_history_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    UserAuthenticationApi.authenticationStream.listen((authResult) {
      authResult.when(
        idle: () {},
        loading: () => Fluttertoast.showToast(msg: "loading"),
        success: (authData) => Fluttertoast.showToast(
            msg: authData?.accessToken ?? "no access token"),
        unauthorized: (int code, String message) =>
            Fluttertoast.showToast(msg: message),
        error: (int code, String message) =>
            Fluttertoast.showToast(msg: message),
      );
    });
  }

  authenticateUser() {
    UserAuthenticationApi.authenticateUser(
      "support@kangaroorewards.com",
      "1111",
    );
  }

  getUserProfile() {
    UserProfileApi.getUserProfile();
  }

  getRewards() {
    UserRewardsApi.getUserRewards();
  }

  getTransactions() {
    UserTransactionHistoryApi.getUserTransactionHistory();
  }

  resetPin() {
    UserPinUpdateApi.updatePin(
        updatePinRequest: UpdatePinRequest(pinCode: "1111"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
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
                onPressed: getRewards,
                color: Colors.yellow,
                height: 100,
                child: Center(
                  child: Text(
                    'get user rewards',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: getRewards,
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
              StreamBuilder<Result<UserRewardsModel>>(
                stream: UserRewardsApi.userRewardsStream,
                initialData: Result.idle(),
                builder: (context, _userTransactions) {
                  return _userTransactions.data?.when(
                    idle: () => Text('transaction history is idle'),
                    loading: () =>
                        CircularProgressIndicator(color: Colors.brown),
                    success: (userTransactions) {
                      print("Flutter SDK rendering first reward");
                      return Image.network(
                          "${userTransactions?.data.catalogItems.randomItem().images?[0].large}");
                    },
                    unauthorized: (int code, String message) =>
                        Text('error: $message'),
                    error: (code, message) => Text('error: $message'),
                  ) ??
                      SizedBox();
                },
              ),
              StreamBuilder<Result<UserProfileModel>>(
                stream: UserPinUpdateApi.userPinUpdateStream,
                initialData: Result.idle(),
                builder: (context, _userPinUpdate) {
                  return _userPinUpdate.data?.when(
                    idle: () => Text('pin updates are idle'),
                    loading: () => CircularProgressIndicator(
                        color: Colors.yellow.shade900),
                    success: (userTransactions) => Text(
                        "pin updated at: ${userTransactions?.data.updatedAt}"),
                    unauthorized: (int code, String message) =>
                        Text('error: $message'),
                    error: (code, message) => Text('error: $message'),
                  ) ??
                      SizedBox();
                },
              ),
              StreamBuilder<Result<UserProfileModel>>(
                stream: UserProfileApi.userProfileStream,
                initialData: Result.idle(),
                builder: (context, _userProfile) {
                  return _userProfile.data?.when(
                    idle: () => Text('profile is idle'),
                    loading: () =>
                        CircularProgressIndicator(color: Colors.purple),
                    success: (userProfile) =>
                        Image.network("${userProfile?.data.profilePhoto}"),
                    unauthorized: (int code, String message) =>
                        Text('profile has unauthorized error'),
                    error: (code, message) =>
                        Text('profile has unknown error'),
                  ) ??
                      SizedBox();
                },
              ),
              StreamBuilder<Result<UserRewardsModel>>(
                stream: UserRewardsApi.userRewardsStream,
                initialData: Result.idle(),
                builder: (context, _userRewards) {
                  return _userRewards.data?.when(
                    idle: () => Text('rewards are idle'),
                    loading: () =>
                        CircularProgressIndicator(color: Colors.brown),
                    success: (userRewards) {
                      print("Flutter SDK rendering second reward");
                      return Image.network(
                          "${userRewards?.data.catalogItems.randomItem().images?[0].large}");
                    },
                    unauthorized: (int code, String message) =>
                        Text('error: $message'),
                    error: (code, message) => Text('error: $message'),
                  ) ??
                      Text('error: null data');
                },
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
