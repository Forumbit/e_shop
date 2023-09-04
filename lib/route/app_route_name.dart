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
  static const loader = '/';
  static const login = '/login';
  static const resetPassword = '/reset_password';
  static const verifyEmail = '/vefify_email';
  static const signUp = '/sign_up';
  static const home = '/home';
  static const favorite = '/favorite';
  static const profile = '/profile';
  static const cart = '/cart';

  //* RouteNamedUrls
  static const categoryList = AppRouteNamed.categoryList;
  static const popularProductList =
      'product_list/${AppRouteNamed.popularProduct}';
  static const categoryProductList =
      'product_list/${AppRouteNamed.categoryProduct}/:${AppRouteArgument.category}';
  static const searchProductList =
      'product_list/${AppRouteNamed.searchProduct}/:${AppRouteArgument.query}';
  static const productDetail =
      '${AppRouteNamed.productDetail}/:${AppRouteArgument.id}';
}
