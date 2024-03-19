import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:flutter/material.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          AppTexts.loading,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
