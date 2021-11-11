// ignore_for_file: avoid_print

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:crud/amplifyconfiguration.dart';
import 'package:crud/models/ModelProvider.dart';
import 'package:get/get.dart';

class AWSConfiguration {
  final _amplifyConfigured = false.obs;

  configureAmplify() async {
    try {
      Future.wait([
        Amplify.addPlugin(
            AmplifyDataStore(modelProvider: ModelProvider.instance)),
        Amplify.addPlugin(AmplifyAPI()),
        Amplify.addPlugin(AmplifyAuthCognito()),
      ]);
      await Amplify.configure(amplifyconfig);
      setAmplifyConfigured(true);
      if (_amplifyConfigured.value == true) {
        print("Amplify Configured");
      }
    } catch (err) {
      print(err);
    }
  }

  setAmplifyConfigured(valor) {
    _amplifyConfigured.value = valor;
  }
}
