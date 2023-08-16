import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/config/size_config.dart';
import 'package:e_shop/features/product/presentation/widgets/about_us_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/category_list_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/home_app_bar.dart';
import 'package:e_shop/features/product/presentation/widgets/popular_product_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isLoading = true;
  void _buttonPressed(isLoadingToggle) {
    isLoading = !isLoadingToggle;
    setState(() {});
  }

  late SizeConfig _sizeConfig;

  @override
  void didChangeDependencies() {
    _sizeConfig = SizeConfig()..init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buttonPressed(isLoading),
        child: const Icon(Icons.hourglass_bottom),
      ),
      appBar: const HomeAppBar(),
      body: Shimmer(
        child: ListView(
          physics: isLoading ? const NeverScrollableScrollPhysics() : null,
          children: [
            const SizedBox(height: 9),
            CategoryListWidget(isLoading: isLoading),
            const SizedBox(height: 17),
            PopularProductWidget(isLoading: isLoading),
            const SizedBox(height: 10),
            AboutUsWidget(isLoading: isLoading, sizeConfig: _sizeConfig),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}