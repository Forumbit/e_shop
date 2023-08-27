part of 'di_container.dart';

class _ScreenFactoryDefault implements ScreenFactory {
  final _DIContainer _diContainer;

  _ScreenFactoryDefault(this._diContainer);

  @override
  Widget makeHome() => MultiBlocProvider(
        providers: [
          BlocProvider<CategoryListBloc>(
            create: (_) => CategoryListBloc(
              _diContainer._getCategoryRepository(),
            )..add(const CategoryListEvent.started()),
          ),
          BlocProvider<ProductListBloc>(
            create: (_) => ProductListBloc(
              _diContainer._getProductRepository(),
            )..add(
                const ProductListEvent.started(
                  productListEnum: ProductListEnum.popular,
                  parameter: null,
                ),
              ),
          ),
        ],
        child: const HomePage(),
      );

  @override
  Widget makeCategoryList() => BlocProvider<CategoryListBloc>(
        create: (context) => CategoryListBloc(
          _diContainer._getCategoryRepository(),
        )..add(const CategoryListEvent.started()),
        child: const CategoryListPage(),
      );

  @override
  Widget makePopularProductList() => BlocProvider(
        create: (context) => ProductListBloc(
          _diContainer._getProductRepository(),
        )..add(
            const ProductListEvent.started(
              productListEnum: ProductListEnum.popular,
              parameter: null,
            ),
          ),
        child: const PopularProductListPage(
          productListEnum: ProductListEnum.popular,
        ),
      );

  @override
  Widget makeCategoryProductList(String category) => BlocProvider(
        create: (context) => ProductListBloc(
          _diContainer._getCategoryRepository(),
        )..add(
            ProductListEvent.started(
              productListEnum: ProductListEnum.category,
              parameter: category,
            ),
          ),
        child: PopularProductListPage(
          productListEnum: ProductListEnum.category,
          category: category,
        ),
      );

  @override
  Widget makeSearchProductList(String query) => BlocProvider(
        create: (context) => ProductListBloc(
          _diContainer._getProductRepository(),
        )..add(
            ProductListEvent.started(
              productListEnum: ProductListEnum.search,
              parameter: query,
            ),
          ),
        child: PopularProductListPage(
          productListEnum: ProductListEnum.search,
          category: query,
          // controllerText: query,
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
