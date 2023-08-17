part of 'di_container.dart';

class _ScreenFactoryDefault implements ScreenFactory {
  @override
  Widget makeHome() => const HomePage();

  @override
  Widget makeProductList() => const ProductListPage();
}
