/*
import 'package:flutter/material.dart';
import 'package:prov2_adv_app/first_prov.dart';
import 'package:prov2_adv_app/listview_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=> CounterProvider()),
        ChangeNotifierProvider(create: (context)=> ListDataProvider())
      ],child: const MyApp(),
      )


    */
/*ChangeNotifierProvider(
          create: (context)=> CounterProvider(),
          child:ChangeNotifierProvider(
            create: (context)=> ListDataProvider(),
            child: const MyApp(),)
          ),*//*

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
        body: Consumer<ListDataProvider>(builder: (_,provider,__){
          List<Map<String,dynamic>>data= provider.getMyListData();
          return ListView.builder(itemCount:data.length,itemBuilder: (ctx,index){
            return ListTile(
              title: Text('${data[index]['Name']}'),
              subtitle: Text('${data[index]['Class']}'),
              trailing: InkWell(
                  onTap: (){
                    context.read<ListDataProvider>().removeData(index);
                  },
                  child: Icon(Icons.delete,color: Colors.red,)),
            );

          });

        }),
        floatingActionButton:  FloatingActionButton(
          onPressed: (){
            Map<String,dynamic>newData = {

              "Name": "Rama",
              "Class": "x",
            };
            context.read<ListDataProvider>().addData(newData);

          },

          child: Icon(Icons.add),
        )
    );

  }
}

*/
