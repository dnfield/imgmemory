import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final url =
    'https://img2.pngio.com/filetycho-catalog-skymap-v20-threshold-magnitude-50-high-res-high-res-png-8192_4096.png';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    imageCache.maximumSize = 0;
    super.initState();
  }

  void _incrementCounter() {
    // print(imageCache.currentSize);
    // Image.network(url)
    //     .image
    //     .obtainCacheStatus(
    //       configuration: createLocalImageConfiguration(context),
    //     )
    //     .then((loc) {
    //   print(loc);
    // });
    if (_counter == 10) {
      imageCache.clear();
    }
    // Image.network(url)
    //     .image
    //     .obtainCacheStatus(
    //       configuration: createLocalImageConfiguration(context),
    //     )
    //     .then((loc) {
    //   print('r2: $loc');
    // });
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Images will go here $_counter'),
          if (_counter % 2 == 0)
            // Image.network(url)
            Image.asset('big.png',)
          else
            Text('NO IMAGE YET'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
