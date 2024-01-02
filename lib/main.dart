import 'package:flutter/material.dart';
import 'package:prov2_adv_app/first_prov.dart';
import 'package:prov2_adv_app/listview_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider()),
      ChangeNotifierProvider(create: (context) => ListDataProvider())
    ],
    child: MyApp(),
  )

  );
  }




      /*ChangeNotifierProvider(
          create: (context)=> CounterProvider(),
          child:ChangeNotifierProvider(
            create: (context)=> ListDataProvider(),
            child: const MyApp(),)
          ),*/

class MyApp extends StatelessWidget {

   // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  var namecontroller = TextEditingController();
  var classscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("Home Page built");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('provider'),
      ),
       body: Consumer<ListDataProvider>(builder: (_, provider, __) {
        List<Map<String, dynamic>> data = provider.getMyListData();
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () {
                namecontroller.text = data[index]['Name'];
                classscontroller.text = data[index]['Class'];

                showModalBottomSheet(context: context, builder: (_) {
                  return Container(
                    height: 250,
                    child: Column(
                      children: [
                        Text('Update Data'),

                        SizedBox(
                          height: 21,
                        ),

                        TextField(
                          controller: namecontroller,
                        ),

                        SizedBox(
                          height: 11,
                        ),

                        TextField(
                          controller: classscontroller,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var dataTobeUpdated = {
                              "Name": namecontroller.text.toString(),
                              "Class": classscontroller.text.toString()
                            };

                            context.read<ListDataProvider>().updateData(
                                dataTobeUpdated, index);
                          },
                          child: Text('Update')),
                      ],
                    ),
                  );
                });
              },

              child: ListTile(
                title: Text('${data[index]['Name']}'),
                subtitle: Text('${data[index]['Class']}'),
                trailing: InkWell(
                  onTap: () {
                    context.read<ListDataProvider>().removeData(index);
                  },
                  child: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            );
          },
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Map<String, dynamic> newData = {
            "Name": "Rama",
            "Class": "x",
          };
          context.read<ListDataProvider>().addData(newData);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
