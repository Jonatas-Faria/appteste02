import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'test_controller.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestPage extends StatefulWidget {
  final String title;
  const TestPage({Key key, this.title = "Test"}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends ModularState<TestPage, TestController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asdasd"),
      ),
      body: PageView(
        controller: controller.pageViewController,
        children: [
          Container(),
          Container(),
          Container()
        ],
      ),
      bottomNavigationBar: 
      AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (_, snapshot){
          return Container(
                      child: BottomNavigationBar(
              currentIndex: controller.pageViewController?.page?.round() ?? 0,
              onTap: (index){
                controller.pageViewController.jumpToPage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time),
                  title: Text("acces")
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_box),
                  title: Text("add")
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarm),
                  title: Text("alarm")
                ),
              ],
            ),
          );
        }
      ),
      // bottomNavigationBar: 
      // AnimatedBuilder(
      //   animation: controller.pageViewController,
      //   builder: (context, snapshot){
      //     return BottomNavigationBar(
      //       currentIndex: controller.pageViewController?.page?.round() ?? 0,
      //       onTap: (index){
      //         controller.pageViewController.jumpToPage(index);
      //       },
      //       items: [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.access_time)
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.add_box)
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.access_alarm)
      //         ),
      //       ],
      //     );
      //   }
      // )          
    );
  }
}
