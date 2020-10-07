
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/src/widgets/framework.dart';

part 'test_controller.g.dart';

@Injectable()
class TestController = _TestControllerBase with _$TestController;

abstract class _TestControllerBase with Store implements Disposable{

  final pageViewController = PageController();

  @override
  void dispose(){
    pageViewController.dispose();
  }
}
