import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}} extends StatefulWidget {
  final String title;

  const {{#pascalCase}}{{name}}{{/pascalCase}}({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _{{#pascalCase}}{{name}}{{/pascalCase}}State createState() => _{{#pascalCase}}{{name}}{{/pascalCase}}State();
}

class _{{#pascalCase}}{{name}}{{/pascalCase}}State extends State<{{#pascalCase}}{{name}}{{/pascalCase}}>
    with SingleTickerProviderStateMixin {

  late final AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: {{duration}}),);
    animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animationController, curve: Curves.{{curve}}));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return child;
        
      },
      child: const SizedBox.shink(),
    );
  }
}
