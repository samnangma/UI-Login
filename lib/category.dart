import 'package:flutter/material.dart';
import 'package:mylogin/category.dart';
import 'package:mylogin/widget/course.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          "Categories",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:25
          ),
        ),
        actions: <Widget>[
          ClipOval(
            child: Container(
              color: Colors.red,
              width: 25,
              height: 25,
              child: const Center(
                child: Text(
                  '08',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10,),
          const Padding(
            padding: EdgeInsets.all(7),
            child: CircleAvatar(
              backgroundImage:
              NetworkImage('https://www.reuters.com/resizer/O-QT-6JbJVpU9G3EnvL_xPDI5S0=/960x1200/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/7NBXJ3TU5JL7NHRRJJDS3U3WDY.jpg'),
            ),
          ),
        ],
      ),

      body: GridView.builder(
          shrinkWrap: true,
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: CourseBox(),
            );
          }
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),

    );
  }
}