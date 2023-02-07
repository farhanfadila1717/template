import 'package:client_app/core/redux/action_mapper.dart';
import 'package:client_app/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper extends ActionMapper {
  const {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper(Store<AppState> store) : super(store);
}