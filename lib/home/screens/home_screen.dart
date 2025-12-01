import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_application/home/data/places_data.dart';
import 'package:travel_application/home/screens/place_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: _appBar(),

      body: Padding(
        padding:  EdgeInsets.all(h*0.01),
        child: Column(
          spacing: h*0.02,
          children: [
            _seeAll(name: "Popular Place"),
            _popularPlace(h: h,w: w,context: context),
            _seeAll(name: "Recomendation for you"),
Expanded(
  child: SingleChildScrollView(
    child: Column(
      spacing: h*0.01,
      children: List.generate(placesData.length, (int index){
        return GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PlaceDetailScreen(placeModel: placesData[index],)));
          },
          child: Card(
            color: Colors.white,
            child: Row(
          mainAxisSize: MainAxisSize.min
              ,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      Container(
                        height:h*0.08,
                        width: h*0.08,
                        margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(placesData[index].img[0]))
                        ),

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(placesData[index].name,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600),),
                          Row(children: [Icon(Icons.location_pin,size: 14,),Text(placesData[index].location,style: TextStyle(color: Colors.grey),)],)
                          , Row(children: [
                            Icon(Icons.star,color: Colors.yellow,size: 20,),
                            Text(placesData[index].rating.toString(),style: TextStyle(fontWeight: FontWeight.w600),),
                            Text("  ( ${placesData[index].reviews} reviews) ",style: TextStyle(color: Colors.grey),)
                          ],)
                        ],
                      )
                    ],
                  ),
                ),
                Text.rich(TextSpan(
                  text: " \$${placesData[index].price}"
                      ,style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight:FontWeight.bold
                ),
                  children:
                    [
                      TextSpan(
                        text: "/Person",
                        style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400)
                      )
                    ]
                ))
              ],
            )
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
Widget _popularPlace({required final double h,required final double w,required final context}){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: List.generate(placesData.length, (int index){
        return GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PlaceDetailScreen(placeModel: placesData[index])));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            height:h*0.2 ,
            width: w*0.7,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(placesData[index].img[0]))
               ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(

                height: h*0.065,
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                   begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withValues(alpha: 0.5),
                    Colors.black
                  ]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  ),
                  color: Colors.grey
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,


                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(placesData[index].name,style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: Colors.white),),
                        Row(children: [
                          Icon(Icons.location_pin,color: Colors.white,size: 18,),
                          Text(placesData[index].location,style: TextStyle(color: Colors.white),)
                        ],)
                      ],
                    ),
                    Row
                      (
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text(placesData[index].rating.toString(),style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
            ),

          ),
        );
      }),),
    );
}
}
