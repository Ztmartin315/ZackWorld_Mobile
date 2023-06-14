import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 77, 75, 75),
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Welcome to ZackWorld!!!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(widget.title, style: TextStyle(fontFamily: 'RobotoMono')),
      )),
      body: Center(
        //listview of tiles which take user to different screen on click event
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),

            //Logo For ZackWorld
            const Image(
                image: AssetImage('lib/assets/images/logo1.jpg'),
                height: 150,
                width: 150),

            //SizedBox for spacing
            const SizedBox(
              height: 25,
            ),

            Text(
              "ZackWorld",
              style: TextStyle(color: Colors.black, fontSize: 45),
              textAlign: TextAlign.center,
            ),

            //SizedBox for spacing
            const SizedBox(
              height: 40,
            ),

            //About Page ListTile
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const aboutScreen()),
                )
              },
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.amber,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('About Zack',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ]),
              ),
            ),

            //SizedBox for spacing
            const SizedBox(
              height: 25,
            ),

            //Resume Page ListTile
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const resumeScreen()),
                )
              },
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.amber,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Zack's Resume",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      Icon(
                        Icons.description,
                        color: Colors.black,
                      )
                    ]),
              ),
            ),

            //SizedBox for spacing
            const SizedBox(
              height: 25,
            ),

            //Gallery ListTile
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const galleryScreen()),
                );
              },
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.amber,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Gallery',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      Icon(
                        Icons.collections,
                        color: Colors.black,
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class aboutScreen extends StatelessWidget {
  const aboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Zack'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class galleryScreen extends StatelessWidget {
  const galleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class resumeScreen extends StatelessWidget {
  const resumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zack's Resume"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
