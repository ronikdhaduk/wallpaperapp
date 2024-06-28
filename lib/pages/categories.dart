import 'package:flutter/material.dart';
import 'package:wallpaperapp/pages/all_wallpaper.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Center(
                  child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AllWallpaper(category: "WildLife")));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/WildLife/WildLife1.jpg",width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("WildLife", style: TextStyle(color: Colors.white,fontFamily: 'Poppins', fontSize: 28.0, fontWeight: FontWeight.bold),)),
                    ),
                  ],),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AllWallpaper(category: "Foods")));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/Foods/Food1.jpg",width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Foods", style: TextStyle(color: Colors.white,fontFamily: 'Poppins', fontSize: 28.0, fontWeight: FontWeight.bold),)),
                    ),
                  ],),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AllWallpaper(category: "Nature")));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/Nature/Nature1.jpg",width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("Nature", style: TextStyle(color: Colors.white,fontFamily: 'Poppins', fontSize: 28.0, fontWeight: FontWeight.bold),)),
                    ),
                  ],),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AllWallpaper(category: "City")));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0,bottom: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/City/City1.jpg",width: MediaQuery.of(context).size.width,height: 180, fit: BoxFit.cover)),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(child: Text("City", style: TextStyle(color: Colors.white,fontFamily: 'Poppins', fontSize: 28.0, fontWeight: FontWeight.bold),)),
                    ),
                  ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
