import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_modular/app/modules/home/second/second_module.dart';
import '../../navigator_keys.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: NavigatorKeys.navigatorKeyHome,
        appBar: AppBar(
          title: Text('Home Module'),
        ),
        // body: Expanded(child: RouterOutlet()));
        body: Center(
          child: ElevatedButton(
              onPressed: () => {
                    print('> Acessando page1'),
                    Navigator.of(NavigatorKeys.navigatorKeyHome.currentContext!).popAndPushNamed('/home/page1')
                    // Modular.to.popAndPushNamed('/home/page1'),
                  },
              child: Text('Page 1')),
        ));
  }
}

class NewHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/page1');

    final leading = SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          ListTile(
            title: Text('Page 1'),
            onTap: () => Navigator.of(context).popAndPushNamed('/home/page1'),
            // onTap: () => Modular.to.navigate('/home/page1'),
          ),
          ListTile(
            title: Text('Page 2'),
            onTap: () => Navigator.of(context).popAndPushNamed('/home/page2'),
            // onTap: () => Modular.to.navigate('/home/page2'),
          ),
          ListTile(
            title: Text('Page 3'),
            onTap: () => Navigator.of(context).popAndPushNamed('/home/page3'),
            // onTap: () => Modular.to.navigate('/home/page3'),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Row(
        children: [
          leading,
          Container(width: 2, color: Colors.black45),
          Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}

class InternalPage extends StatelessWidget {
  final String title;
  final Color color;
  const InternalPage({Key? key, required this.title, required this.color}) : super(key: key);

  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Center(child: Text(title)),
    );
  }
}
