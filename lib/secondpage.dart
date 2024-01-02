import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prov2_adv_app/first_prov.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text('provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times on second page:',
              ),
              Text(

                //get listen

                '${context.watch<CounterProvider>().getCountValue()}',
                //'${Provider.of<CounterProvider>(context).getCountValue()}',
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            FloatingActionButton(
              onPressed: () {
                //set

                context.read<CounterProvider>().decrementCount();
                //Provider.of<CounterProvider>(context, listen: false).decrementCount();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),



            FloatingActionButton(
              onPressed: () {
                //set

                context.read<CounterProvider>().incrementCount();
                //Provider.of<CounterProvider>(context, listen: false).incrementCount();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),

          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}