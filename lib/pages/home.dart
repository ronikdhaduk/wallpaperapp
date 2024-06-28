import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List wallpaperimage = ["images/wallpaper1.jpg","images/wallpaper2.jpg","images/wallpaper3.jpg"];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.orange,),
      body: Container(
        margin: EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(60),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                      child: Image.asset("images/profile1.png", height: 50, width: 50, fit: BoxFit.cover,)),
                ),
                SizedBox(width: 60.0,),
                Text("Wallify", style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),),

              ],
            ),
            SizedBox(height: 30.0,),
            CarouselSlider.builder(
                itemCount: wallpaperimage.length,
                itemBuilder: (context, index, realIndex){
                  final res = wallpaperimage[index];
                  return buildImage(res, index);
                  },
                options: CarouselOptions(
                  autoPlay: true,
                  height: MediaQuery.of(context).size.height/1.5,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,onPageChanged: (index, reason){
                    setState(() {
                      activeIndex = index;
                    });
                })),
            SizedBox(height: 20.0,),
            Center(child: buildIndicator()),
          ],
        ),
      ),
    );
  }
  
  Widget buildIndicator()=> AnimatedSmoothIndicator(activeIndex: activeIndex, count: 3,
    effect: SlideEffect(
    dotWidth: 15, dotHeight: 15, dotColor: Colors.blue
  ),);
  
  Widget buildImage(String urlImage, int index)=>Container(
    margin: EdgeInsets.only(right: 10.0),
    height: MediaQuery.of(context).size.height/1.5,
    width: MediaQuery.of(context).size.width,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
        child: Image.asset(urlImage, fit: BoxFit.cover,)),
  );
}
