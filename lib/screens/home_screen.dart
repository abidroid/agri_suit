import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: const Text(
            'Welcome',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              FlutterLogo(
                                size: 80,
                              ),
                              Text(
                                'Flutter',
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Forgot Password')),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                              onPressed: () {},
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Text('New User? Create Account'),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}

/*
Icon(
                Icons.shopping_cart,
                size: 50,
                color: Colors.orange,
              ),
              Icon(Icons.settings),
              FaIcon(
                FontAwesomeIcons.whatsapp,
                size: 50,
                color: Colors.green,
              ),
              Image.network(
                'https://www.mindinventory.com/blog/wp-content/uploads/2022/06/flutter-best-practices.png',
                width: 300,
                height: 200,
              ),
              Container(
                color: Colors.red,
                child: Image.asset(
                  'images/abid.jpeg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/abid.jpeg'),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage('images/abid.jpeg'))),
              ),
 */
/*
Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        width: 300,
        height: 300,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.red[200]!,
              blurRadius: 10.0,
              spreadRadius: 10.0,
              offset: Offset(5,5),
              blurStyle: BlurStyle.normal
            )
          ],

          gradient: const LinearGradient(
            colors: [
              Colors.red,
              Colors.purple,
              Colors.orangeAccent
            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

          )
        ),
        child: const Text(
          'Red',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
 */
/*
const Text(
        'Hello World',
        style: TextStyle(
            color: Colors.red,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 5),
      ),
 */
