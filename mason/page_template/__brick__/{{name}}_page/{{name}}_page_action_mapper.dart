import 'package:client_app/core/redux/action_mapper.dart';
import 'package:redux/redux.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper extends ActionMapper {
  {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper(Store store) : super(store);
}