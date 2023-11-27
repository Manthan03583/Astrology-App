import 'package:astrology_app/astropage/article/create_post.dart';
import 'package:flutter/material.dart';

class Publishedpage1 extends StatefulWidget {
  const Publishedpage1({super.key});

  @override
  State<Publishedpage1> createState() => _Publishedpage1State();
}

class _Publishedpage1State extends State<Publishedpage1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/images/published1.png'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text(
            'There is no Article',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Text(
            'Please create an Article',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreatePost()));
                },
                child: const Text(
                  'Click Here',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      decoration: TextDecoration.underline),
                ),
              ),
              const Text(
                ' or click on add button',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.11,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CreatePost()));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
