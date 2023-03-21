import 'package:flutter/material.dart';

void main() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    home: index(),
    theme: ThemeData(),
  )));
}

class index extends StatelessWidget {
  const index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Login!"),
        ),
        body: Center(
          child: SizedBox(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.airlines_outlined,
                  color: Colors.amber,
                  size: 100,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'username',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'password',
                  ),
                  obscureText: true,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => confirmation(),
                        ),
                      );
                    },
                    icon: Icon(Icons.login_outlined)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => forgot(),
                        ),
                      );
                    },
                    child: Text("Forgot password")),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signup(),
                        ),
                      );
                    },
                    child: Text("New USER?!?!")),
              ],
            ),
          ),
        ));
  }
}

void forgots() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    home: forgot(),
    theme: ThemeData(),
  )));
}

class forgot extends StatelessWidget {
  const forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("CHANGE PASSWORD"),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.airlines_outlined,
                color: Colors.amber,
                size: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'username',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'new-password',
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'repeat-password',
                ),
                obscureText: true,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => confirmation(),
                      ),
                    );
                  },
                  icon: Icon(Icons.login_outlined)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => index(),
                      ),
                    );
                  },
                  child: Text("go to login")),
            ],
          ),
        ),
      ),
    );
  }
}

void up() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    home: signup(),
    theme: ThemeData(),
  )));
}

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("MAKE AN ACCOUNT!"),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.airlines_outlined,
                color: Colors.amber,
                size: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'username',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'repeat-password',
                ),
                obscureText: true,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => confirmation(),
                      ),
                    );
                  },
                  icon: Icon(Icons.login_outlined)),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => index(),
                      ),
                    );
                  },
                  child: Text("Already have an account ? Log in!")),
            ],
          ),
        ),
      ),
    );
  }
}

void Confirmations() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    home: confirmation(),
    theme: ThemeData(),
  )));
}

class confirmation extends StatelessWidget {
  const confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("WLECOME!"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to our humble website! this is everything."),
          ],
        ),
      ),
    );
  }
}
