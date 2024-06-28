import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaperapp/models/photo_model.dart';
import 'package:wallpaperapp/pages/full_screen.dart';

Widget wallpaper(List<PhotosModel> listPhotos, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      padding: EdgeInsets.all(4.0),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: listPhotos.map((PhotosModel) {
        return GridTile(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FullScreen(imagepath: PhotosModel.src!.portrait!)));
              },
              child: Hero(
                        tag: PhotosModel.src!.portrait!,
                        child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: PhotosModel.src!.portrait!,
                  fit: BoxFit.cover,
                ),
              ),
                        ),
                      ),
            ));
      }).toList(),
    ),
  );
}
