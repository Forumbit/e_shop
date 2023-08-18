abstract class AppRouteArgument {
  static const category = 'category';
  static const query = 'query';
}

abstract class AppRouteNamed {
  static const categoryProduct = 'category_product';
  static const searchProduct = 'search_product';
}

abstract class AppRouteUrl {
  static const home = '/';
  static const popularProductList = '/product_list/popular';
  static const categoryProductList =
      '/product_list/${AppRouteNamed.categoryProduct}/:${AppRouteArgument.category}';
  static const searchProductList =
      '/product_list/${AppRouteNamed.searchProduct}/:${AppRouteArgument.query}';
}
