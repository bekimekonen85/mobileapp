import 'package:flutter/material.dart';
import 'package:project_pro/drawer.dart';
import 'package:provider/provider.dart';

import '../ItemDetails.dart';
import '../main.dart';
import '../providers/items_provider.dart';

class ItemLIstScreen extends StatelessWidget {
  const ItemLIstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        
        title:Row(
          children: const [
            Icon(Icons.data_object,),
            Text('\t\tList of item'), 
                       
          ],
        ),
      
        actions: <Widget>[
          IconButton( 
                          icon: Icon(
                            MyApp.themeNotifier.value == ThemeMode.light ? Icons.brightness_3 : Icons.light_mode),
                            onPressed: () {
                              MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light; }),
           const Icon(Icons.more_vert),
          ]
          
        
          
      ),
       
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [

              const SizedBox(height: 1),
              Expanded(
                child:ListView.builder(

                itemCount: context.watch<Items>().items.length,
                
                itemBuilder: (context, index) {
                  final item = context.watch<Items>().items[index];
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 85,                        
                      child: ListTile(
                        shape: RoundedRectangleBorder(side: const BorderSide(color:Color.fromARGB(179, 221, 216, 216),width: 0.5),
                         borderRadius: BorderRadius.circular(10)), 
                        leading: Container(
                          width: 60,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue
                          ),
                          child: Image.network(item.imageUrl,width: 10,)
                          ),
                        title: Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                        trailing: const Icon(Icons.edit, color: Colors.black,),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ItemDetails(item: item),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
             )      
        
            ],
          ),
          
        ),
        
        drawer: const DrawerWidget(),
        
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,          
      floatingActionButton: FloatingActionButton(
          onPressed :(){},
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
          ),     

      );
  }
}

