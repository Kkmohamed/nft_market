import 'package:flutter/material.dart';

class NftMarket extends StatelessWidget {
  const NftMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Market',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(),
    );
  }
}
