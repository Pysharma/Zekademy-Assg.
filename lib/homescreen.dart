import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Content.dart';
import 'details.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 5,
        elevation: 1,
        backgroundColor: Color(0xffFFFFFF),
        title: Image.asset('assets/Logo.png',height: 60,width: 60,),
        actions: [

          IconButton(onPressed: (){},
            icon: Icon(Icons.notifications_none,color: Color(0xff141414),size: 28),
          ),

          IconButton(onPressed: null,
            icon: Icon(Icons.search,color: Color(0xff141414),size: 30),
          ),
          SizedBox(width: 5,)
        ],
      ),

      body: SingleChildScrollView(

        child: ListView.builder(
          shrinkWrap: true,
          itemCount: Catalogmodel.items.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index){
            final item = Catalogmodel.items[index];
            return Card(
              elevation: 2,
              shadowColor: Color(0xffEEEEEE),
              margin: EdgeInsets.only(top: 20,left: 10,right: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
              ),

              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(item.image,
                      height: 85,
                      width: 85,
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name ,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,

                            ),),
                          SizedBox(height: 7,),
                          Text("\@${item.username}",style: TextStyle(
                              fontFamily: 'Poppins',fontWeight: FontWeight.w500, fontSize: 14,color: Color(0xff8C8C8C))),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: BorderSide(color: Color(0xffEEEEEE))
                            ))
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Detailpage(item: item),),);
                        },
                        child: Text('View',style: TextStyle(fontSize: 15,color: Color(0xff7000FF),fontWeight: FontWeight.bold),),
                      ),
                    ),


                  ],
                ),
              ),
            );
          },
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffFFFFFF),
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Color(0xff7000FF),
        unselectedItemColor: Color(0xffAAAAAA),
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.users),label: 'People',),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.plusSquare),label: 'Create',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: 'Activities',),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label: 'Profile',),
        ],
      ),
    );
  }
}
