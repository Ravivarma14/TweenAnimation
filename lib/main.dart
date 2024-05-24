import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isoriginalvalues=false;

  var array=[-300,-250,-200,-150,-100,-50,-20,-10];

  void _repeat() {

    setState(() {
      if(isoriginalvalues){
        for(int i=0;i<array.length;i++){
          array[i]-=10;
        }
      }
      else {
        for(int i=0;i<array.length;i++){
          array[i]-=10;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: Duration(seconds: 2),
          builder: (context,value,_){
            return Stack(
              children: [
                Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset( 0.0, array[0] * value),
                  child: Container(
                      height: value * 100,
                      width: value *100,
                      decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                  ),
                  ),
                ),
              ),

                if(0.9-value >0)
                Opacity(
                  opacity: 0.9-value,
                  child: Transform.translate(
                    offset: Offset( 0.0, array[1] * value),
                    child: Container(
                      height: value * 80,
                      width: value * 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                if(0.8-value >0)
                Opacity(
                  opacity: 0.8-value,
                  child: Transform.translate(
                    offset: Offset( 0.0, array[2] * value),
                    child: Container(
                      height: value * 60,
                      width: value * 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                if(0.7-value >0)
                Opacity(
                  opacity: 0.7-value,
                  child: Transform.translate(
                    offset: Offset( 0.0, array[3] * value),
                    child: Container(
                      height: value * 40,
                      width: value * 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                if(0.6-value >0)
                Opacity(
                  opacity: 0.6-value,
                  child: Transform.translate(
                    offset: Offset( 0.0, array[4] * value),
                    child: Container(
                      height: value * 20,
                      width: value * 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                if(0.5-value >0)
                Opacity(
                  opacity: 0.5-value,
                  child: Transform.translate(
                    offset: Offset( 0.0, array[5] * value),
                    child: Container(
                      height: value * 10,
                      width: value * 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),

                if(0.4-value >0)
                  Opacity(
                    opacity: 0.4-value,
                    child: Transform.translate(
                      offset: Offset( 0.0, array[6] * value),
                      child: Container(
                        height: value * 10,
                        width: value * 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),

                if(0.3-value >0)
                  Opacity(
                    opacity: 0.3-value,
                    child: Transform.translate(
                      offset: Offset( 0.0, array[7] * value),
                      child: Container(
                        height: value * 10,
                        width: value * 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),

            ]
            );
          },

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _repeat,
        tooltip: "Repeat Animation",
        child: Icon(Icons.replay),
      ),
    );
  }

}


