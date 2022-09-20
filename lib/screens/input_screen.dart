import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  var fullName = '';

  var firstController = TextEditingController();
  var lastController = TextEditingController();


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
                            controller: firstController,
                            decoration: InputDecoration(
                                hintText: 'First Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: lastController,
                            decoration: InputDecoration(
                                hintText: 'Last Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                  onPressed: () {
                                    firstController.clear();
                                    lastController.clear();

                                    setState(() {
                                      fullName = '';
                                    });
                                  },
                                  child: const Text(
                                    'Clear',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      )),
                                  onPressed: () {

                                    String firstName = firstController.text;
                                    String lastName = lastController.text;

                                    setState((){
                                      fullName = '$firstName $lastName';
                                    });

                                  },
                                  child: const Text(
                                    'Concat',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(fullName),
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
