import 'package:client_app/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper extends ActionMapper {
  {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper(Store store) : super(store);
}
