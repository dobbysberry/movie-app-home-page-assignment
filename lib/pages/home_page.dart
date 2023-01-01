
import 'package:flutter/material.dart';
import 'package:movie_app_home/utlis.dart';
import 'package:movie_app_home/utlis/dimens.dart';
import 'package:movie_app_home/widgets/easy_image_widget.dart';
import 'package:movie_app_home/widgets/easy_text_widget.dart';

import '../utlis/colors.dart';
import '../utlis/strings.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App UI Home',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
          appBar: AppBar(
            centerTitle: true,
            //title:
            leading: Image.asset(AssetImages.menuIcon,
              width: iconWidthHeight,
              height: iconWidthHeight,),
            title: Image.asset(AssetImages.appIcon,
              width: iconWidth2,
              height: iconWidthHeight,),
            actions: const[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.search,
                size: iconSize,),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),

          body:
          Stack(
            children: [
              Image.asset(AssetImages.bgImg,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              
              Align(
                alignment: Alignment.center,
                  child: Icon(Icons.play_circle,
                  color: white,
                  size: playBtnSize,)),
              ///TextTitle
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: textContainerH,
                    width: textContainerW,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const EasyTextWidget(textName: movieName, color: white, fontSize: fontSize36, fontWeight: FontWeight.bold),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(delayTime),
                            Text(votes),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: posterContainerH,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const EasyTextWidget(textName: cinemaName, color: white, fontSize: fontSize26, fontWeight: FontWeight.bold),
                        SizedBox(height: 10,),

                        ///For Related Movie
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: EasyImgWidget(imgName: AssetImages.poster1, posterWidth: posterWidth, posterHeight: posterHeight, boxFit: BoxFit.cover),
                          ),
                          Container(
                            child: EasyImgWidget(imgName: AssetImages.poster2, posterWidth: posterWidth, posterHeight: posterHeight, boxFit: BoxFit.cover),
                          ),
                          Container(
                            child: EasyImgWidget(imgName: AssetImages.poster3, posterWidth: posterWidth, posterHeight: posterHeight, boxFit: BoxFit.cover),
                          ),
                          Container(
                            child: EasyImgWidget(imgName: AssetImages.poster4, posterWidth: posterWidth, posterHeight: posterHeight, boxFit: BoxFit.cover),
                          ),
                        ],
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )

        ),
    );
  }
}
