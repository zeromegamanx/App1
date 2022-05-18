library swagger.api;

import '../config/app_config.dart';
import 'api_client.dart';

part 'api/account_api.dart';
part 'request/token_request.dart';
part 'response/token_response.dart';

ApiClient defaultApiClient = ApiClient(baseUrl: AppConfig.baseUrl);
