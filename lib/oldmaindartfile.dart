/*

import 'package:flutter/material.dart';
import 'package:prov2_adv_app/first_prov.dart';
import 'package:prov2_adv_app/secondpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=> CounterProvider(), child: const MyApp(),)

  );
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("Home Page built");

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<CounterProvider>(builder: (ctx,provider,___){
                print("consumer built");
                return
                  Text(//get listen
                    '${provider.getCountValue()}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
              })
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            FloatingActionButton(
              onPressed: (){
                //set
                Provider.of<CounterProvider>(context, listen: false).decrementCount();

              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),

            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));


            }, child: Text('Next Page')),

            FloatingActionButton(
              onPressed: (){
                //set
                Provider.of<CounterProvider>(context, listen: false).incrementCount();

              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),

          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

*/
