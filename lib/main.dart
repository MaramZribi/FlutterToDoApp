import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseOptions fireBaseOptions=FirebaseOptions(appId:"1:598595266409:android:efb88f6177c92120e73ff8",
      apiKey:"AIzaSyAUl-Ww47WDe12n0dHLCGgQdwyXyVvRc2E",
      projectId:"todolist-eef42",
      messagingSenderId:"598595266409",
      storageBucket:'todolist-eef42.appspot.com');
  await Firebase.initializeApp(options:fireBaseOptions

  );
  final FirebaseFirestore f=FirebaseFirestore.instance;
  await f.collection("salut").doc("salut").set( {
    'test':'test'

  });



  /* if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(apiKey:"AIzaSyB7-1PZDClzHmJI8GaEhOg2BggtvYSYhfY", appId: "1:598595266409:web:99f4de12ace95872e73ff8", messagingSenderId: "598595266409", projectId: "todolist-eef42"))
  }
  await Firebase.initializeApp();*/
  //init the hive

  await Hive.initFlutter();
  //open a box
  var box = await Hive.openBox('MyBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
