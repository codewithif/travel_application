import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_application/home/data/places_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 4,
          children: [
            _seeAll(name: "Popular Place"),
            _popularPlace(h: h,w: w),
            _seeAll(name: "Recomendation for you"),
Expanded(
  child: SingleChildScrollView(
    child: Column(
      children: List.generate(10, (int index){
        return Card(
          color: Colors.black,
          child: Row(
            children: [
              Container(
                height:h*0.1,
                width: h*0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("asset/imgs/islamabad.jpg"))
                ),
              )
            ],
          ),
        );}),
    ),
  ),
)
          ],
        ),
      ),

    );
  }
  //Appbar
  PreferredSizeWidget _appBar(){
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Icon(Iconsax.location),
          Text("Jawa Timur",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
          Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,)
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey)
          ),
          child: Stack(
            children: [
              Icon(Iconsax.notification),
              Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
  //see all widget
Widget _seeAll({required String name}){
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
        Text("See all",style: TextStyle(color: Colors.blue,fontSize: 12,fontWeight: FontWeight.w500),)
      ],);
}
//popular place widget
Widget _popularPlace({required final double h,required final double w}){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: List.generate(4, (int index){
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          height:h*0.2 ,
          width: w*0.7,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
             ),

        );
      }),),
    );
}
}
