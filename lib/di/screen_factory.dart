part of 'di_container.dart';

class _ScreenFactoryDefault implements ScreenFactory {
  final _DIContainer _diContainer;

  _ScreenFactoryDefault(this._diContainer);

  @override
  Widget makeHome() => MultiBlocProvider(
        providers: [
          BlocProvider<ProductListBloc>(
            create: (_) => ProductListBloc(
              _diContainer._getProductRepository(),
            )..add(const ProductListEvent.started()),
          ),
          // BlocProvider<CategoryBloc>(
          //   create: (_) => CategoryBloc(
          //     _diContainer._getProductRepository(),
          //   )..add(const CategoryEvent.started()),
          // ),
        ],
        child: const HomePage(),
      );

  @override
  Widget makePopularProductList() => BlocProvider(
        create: (context) => ProductListBloc(
          _diContainer._getProductRepository(),
        )..add(const ProductListEvent.started()),
        child: const ProductListPage(category: 'Популярные'),
      );

  @override
  Widget makeCategoryProductList(String category) => BlocProvider(
        create: (context) => ProductListBloc(
          _diContainer._getProductRepository(),
        )..add(const ProductListEvent.started()),
        child: ProductListPage(category: category),
      );

  @override
  Widget makeSearchProductList(String query) => BlocProvider(
        create: (context) => ProductListBloc(
          _diContainer._getProductRepository(),
        )..add(const ProductListEvent.started()),
        child: ProductListPage(
          category: query,
          controllerText: query,
        ),
      );

  @override
  Widget makeProductDetail(int id) => BlocProvider(
        create: (context) =>
            ProductDetailBloc(_diContainer._getProductRepository())
              ..add(
                ProductDetailEvent.started(id),
              ),
        child: const ProductDetailPage(),
      );
}
