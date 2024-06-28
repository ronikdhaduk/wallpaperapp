import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wallpaperapp/service/database.dart';

class AllWallpaper extends StatefulWidget {
  String category;

  AllWallpaper({required this.category});

  // const AllWallpaper({super.key});

  @override
  State<AllWallpaper> createState() => _AllWallpaperState();
}

class _AllWallpaperState extends State<AllWallpaper> {
  Stream? categoryStream;

  getontheload()async{
    categoryStream = await DatabaseMethods().getCategory(widget.category);
    setState(() {

    });
  }

  void initState(){
    super.initState();
    getontheload();
  }

  Widget allWallpaper() {
    return StreamBuilder(
        stream: categoryStream, builder: (context, AsyncSnapshot snapshot) {
      return snapshot.hasData ? GridView.builder(
        padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.6,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,),
          itemCount: snapshot.data.docs.length,
          itemBuilder: (context, index) {
        DocumentSnapshot ds = snapshot.data.docs[index];
        return Container(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(ds["Image"],fit: BoxFit.cover,)),
        );
      }) : Container();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0,bottom: 10.0),
        child: Column(
          children: [
            Center(
              child: Text(
                widget.category,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Expanded(child: allWallpaper()),
          ],
        ),
      ),
    );
  }
}
