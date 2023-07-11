class AppConstants {
  static const String appName = 'DBFood';
  static const int appVersion = 1;
  //static const String baseUrl = 'http://192.168.245.125:8000';
  //static const String baseUrl = 'http://127.0.0.1:8000';
  //static const String baseUrl = 'http://localhost:8000';
  static const String baseUrl = 'http://mvs.bslmeiyu.com';
  static const String popularProductUri = '/api/v1/products/popular';
  static const String recommendedProductUri = '/api/v1/products/recommended';

  static const String uploadUrl = '/uploads/';
  // user and auth endpoint
  static const String registration_uri = '/api/v1/auth/register';
  static const String login_uri = '/api/v1/auth/login';
  static const String user_info_uri = '/api/v1/customer/info';

  //New
  static const String user_address = 'user_address';
  static const String geocode_uri = '/api/v1/config/geocode-api';

  static const String token = '';
  static const String phone = '';
  static const String password = '';
  static const String cartList = 'cart-list';
  static const String cartHistoryList = 'cart-history-list';
}
