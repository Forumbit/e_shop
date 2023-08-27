abstract class AppRouteArgument {
  static const category = 'category';
  static const query = 'query';
  static const id = 'id';
}

abstract class AppRouteNamed {
  static const popularProduct = 'popular_product';
  static const categoryProduct = 'category_product';
  static const searchProduct = 'search_product';
  static const productDetail = 'product_detail';
  static const categoryList = 'category_list';
}

abstract class AppRouteUrl {
  static const home = '/';
  static const popularProductList = 'product_list/popular';
  static const categoryProductList =
      'product_list/${AppRouteNamed.categoryProduct}/:${AppRouteArgument.category}';
  static const searchProductList =
      'product_list/${AppRouteNamed.searchProduct}/:${AppRouteArgument.query}';
  static const productDetail =
      '${AppRouteNamed.productDetail}/:${AppRouteArgument.id}';
}
