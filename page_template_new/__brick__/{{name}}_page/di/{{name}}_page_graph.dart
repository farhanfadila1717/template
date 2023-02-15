import 'package:client_app/core/analytics/analytics.dart';
import 'package:client_app/core/di/injectable_widget.dart';
import 'package:client_app/core/redux/states/app_state/app_state.dart';
import 'package:client_app/ui/utils/color_palette.dart';

import '../{{name}}_page.dart';
import '../{{name}}_page_action_mapper.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}PageGraph extends Graph<{{#pascalCase}}{{name}}{{/pascalCase}}Page> {
  {{#pascalCase}}{{name}}{{/pascalCase}}PageGraph([super.injector]);

  // Inside this method, we inject the {{#pascalCase}}{{name}}{{/pascalCase}}Page dependencies from injector to the instance
  @override
  void inject({{#pascalCase}}{{name}}{{/pascalCase}}Page subject) {
    subject.analytics = getDependency<Analytics>();
    subject.colorPalette = getDependency<ColorPalette>();
    subject.actionMapper = getDependency<{{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper>();
  }

  // Inside this method, we register all the {{#pascalCase}}{{name}}{{/pascalCase}}Page dependencies:
  @override
  void register() {
    registerDependency<{{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper>(() {
      final store = getDependency<Store<AppState>>();
      return {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper(store);
    });
  }
}