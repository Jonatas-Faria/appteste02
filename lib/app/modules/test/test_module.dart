import 'test_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'test_page.dart';

class TestModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TestController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => TestPage()),
      ];

  static Inject get to => Inject<TestModule>.of();
}
