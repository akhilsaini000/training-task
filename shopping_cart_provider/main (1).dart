import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:provider/provider.dart';
//import 'package:provider_tutorial/counter_provider_mixin.dart';
//import 'package:provider_tutorial/counter_provider_screen.dart';
//import 'package:provider_tutorial/model/user_cart_mixin.dart';
//import 'package:provider_tutorial/product_catalog_screen.dart';
import 'package:provider_tutorial/product_catalog_view.dart';

/*class SMDemos extends StatelessWidget {
  const SMDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ProviderCounter());
  }
}

Future main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: const SMDemos(),
    ),
  );
}*/

Future main() async {
  runApp(const SMDemoApp());
}

class SMDemoApp extends StatelessWidget {
  const SMDemoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: ProductsCatalog());
  }
}


/*class SMDemos extends StatelessWidget {
  const SMDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductCatalog(),
    );
  }
}

Future main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserCart()),
      ],
      child: const SMDemos(),
    ),
  );
}*/
