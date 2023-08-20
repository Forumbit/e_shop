part of 'di_container.dart';

class _ScreenFactoryDefault implements ScreenFactory {
  @override
  Widget makeHome() => const HomePage();

  @override
  Widget makePopularProductList() =>
      const ProductListPage(category: 'Популярные');

  @override
  Widget makeCategoryProductList(String category) => ProductListPage(
        category: category,
      );

  @override
  Widget makeSearchProductList(String query) => ProductListPage(
        category: query,
        controllerText: query,
      );

  @override
  Widget makeProductDetail(int id) => const ProductDetailPage();
}
