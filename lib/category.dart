import 'package:flutter/material.dart';
import 'package:mylogin/category.dart';
import 'package:mylogin/widget/course.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
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
              backgroundImage:AssetImage('assets/images/user.jpg'),
              
            ),
          ),
        ],
      ),

      body: GridView.builder(
          shrinkWrap: true,
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: Course(),
            );
          }
      ),
    );
  }
}