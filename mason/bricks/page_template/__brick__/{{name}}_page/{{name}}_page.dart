import 'package:client_app/core/controllers/{{controller}}_controller.dart';
import 'package:client_app/core/di/injectable_widget.dart';
import 'package:client_app/core/redux/states/app_state/app_state.dart';
import 'package:client_app/ui/utils/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:client_app/core/utils/utils.dart';

import 'di/{{name}}_page_graph.dart';
import '{{name}}_page_action_mapper.dart';


// ignore: must_be_immutable
class {{#pascalCase}}{{name}}{{/pascalCase}}Page extends StatefulWidget with InjectableWidget {
  final {{#pascalCase}}{{name}}{{/pascalCase}}PageGraph _graph;


  ColorPalette colorPalette;


  {{#pascalCase}}{{name}}{{/pascalCase}}PageActionMapper actionMapper;

  Store<AppState> store;

  {{#pascalCase}}{{controller}}{{/pascalCase}}Controller {{#snakeCase}}{{controller}}{{/snakeCase}}Controller;

  @override
  {{#pascalCase}}{{name}}{{/pascalCase}}PageGraph graph() => _graph;

  //injected
  {{#pascalCase}}{{name}}{{/pascalCase}}Page([graph])
      : this._graph = graph ?? {{#pascalCase}}{{name}}{{/pascalCase}}PageGraph() {
    setup();
  }

  @override
  _{{#pascalCase}}{{name}}{{/pascalCase}}PageState createState() => _{{#pascalCase}}{{name}}{{/pascalCase}}PageState();
}

class _{{#pascalCase}}{{name}}{{/pascalCase}}PageState extends State<{{#pascalCase}}{{name}}{{/pascalCase}}Page> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
