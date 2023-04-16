import 'package:flutter/material.dart';
import 'package:myapp/Pages/about.dart';
import 'package:myapp/Pages/registrationForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.grey),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget{
   const HomeActivity({super.key});

  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
    );

    return Scaffold(
      appBar: AppBar(
          title: Text("My First App"),
          toolbarHeight: 60,
          toolbarOpacity: 1,
          elevation: 6,
          actions: [
            IconButton(onPressed: (){mySnackBar("This is Comment", context);}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){mySnackBar("This is Search", context);}, icon: Icon(Icons.search)),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){
          mySnackBar("This is Floating button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label:"Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"Person"),
        ],
        onTap: (int index){{
          if(index == 0){
            mySnackBar("This is Home", context);
          }
        }},
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Forhad Ahmed"),
                  accountEmail: Text("forhad@gmail.com"),
                  currentAccountPicture: Image.network("https://avatars.githubusercontent.com/u/35045612?s=280&v=4"),
            ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: () {
              mySnackBar("this is drawer home", context);
            },),
            ListTile(leading: Icon(Icons.phone), title: Text("Contact")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
            ListTile(leading: Icon(Icons.email), title: Text("Email")),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  registrationForm()),);
          },
        ),
      ),
    );
  }
}