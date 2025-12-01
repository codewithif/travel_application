import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_application/home/data/places_data.dart';
import 'package:travel_application/home/models/place_model.dart';

class PlaceDetailScreen extends StatefulWidget {
  final PlaceModel placeModel;
  const PlaceDetailScreen({super.key,required this.placeModel});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen>  with TickerProviderStateMixin{
  int _currentPage =0;
  late TabController _tabController;
  @override
  void initState() {
    _tabController =TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: _appBar(),


      body:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: [
                //Images page portion
                _pageWidgets(h: h),
                //Overview & review
                _tabWidgets(),


              ],
            ),
          ) ,
          _bookTicketPortion(h)

        ],
      )
    );
  }
  PreferredSizeWidget _appBar(){
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey)
              ),
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
          Text("Detail Place",style: TextStyle(fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4,vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey)
            ),
            child: Icon(Icons.bookmark),
          )
        ],
      ),
    );
  }
  Widget _pageWidgets({required final h,}){
    return  Expanded(
        flex: 7,
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: (index){
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: widget.placeModel.img.length,
                itemBuilder: (context,index){
                  return  Container(

                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.placeModel.img[index]))
                    ),
                  );
                }),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: h*0.13,
                  decoration: BoxDecoration(
                      gradient:   LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withValues(alpha: 0.5),
                            Colors.black
                          ]),
                      color:Colors.black,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                  ),
                  child: Column(
                    children: [
                      Spacer(flex: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          //name and location
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(widget.placeModel.name,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              Row(
                                spacing: 4,
                                children: [
                                  Icon(Iconsax.location,color: Colors.white,),

                                  Text(widget.placeModel.location,style: TextStyle(color: Colors.white),)

                                ],
                              ) ],
                          ),
                          // rating & reviews
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(

                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Text(widget.placeModel.rating.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                ],
                              ),

                              Text("(${widget.placeModel.reviews} reviews)",style: TextStyle(color: Colors.white),)


                            ],
                          )
                        ],
                      ),
                      Spacer(flex: 1,)
                    ],
                  ),
                )),
            Positioned(
                right: 6,
                bottom:h*0.136 ,
                child: Container(
                  height: h*0.12,
                  width: h*0.12,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1.5),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                      image: DecorationImage(
                          fit:BoxFit.cover,image: NetworkImage(widget.placeModel.img[_currentPage<widget.placeModel.img.length-1?_currentPage+1:_currentPage]))
                  ),
                )),

            //Animated dot conatiner
            Positioned(
                bottom: h*0.10,
                left: 0,
                right: 0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.placeModel.img.length, (index){
                    return AnimatedContainer(duration: Duration(
                        milliseconds: 400
                    ),
                      width:_currentPage==index? 30:10,
                      height: 7,
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          color:_currentPage==index? Colors.white:Colors.white38,
                          borderRadius: BorderRadius.circular(30)
                      ),
                    );
                  }),))
          ],
        ));
  }
  Widget _tabWidgets(){
    return   Expanded(
        flex: 3,
        child: Column(
          children: [
            TabBar(
                controller: _tabController,
                padding: EdgeInsets.symmetric(horizontal: 0),
                isScrollable: true,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
                tabs: [
                  Tab(text: "Overview"),
                  Tab(text: "Review")
                ]),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.placeModel.description,),
                    )),
                    SingleChildScrollView(child: Text(widget.placeModel.reviews.toString()))
                  ]),
            )
          ],
        ));
  }
  Widget _bookTicketPortion(h){
    return  Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        height: h*0.1,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",style: TextStyle(color: Colors.grey),)
                  ,
                  Row(
                    children: [
                      Text("\$${widget.placeModel.price.toString()}",style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("/ person",style: TextStyle(color: Colors.grey,fontSize: 18))

                    ],
                  )
                ],
              ),
              //Book ticket button
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Iconsax.ticket_discount,color: Colors.white,),
                    Text("Book Ticket",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                  ],
                ),),
            ],
          ),
        ));
  }

}
