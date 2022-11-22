import 'package:flutter/material.dart';
import 'Content.dart';
import 'homescreen.dart';

class Detailpage extends StatelessWidget {
  final Item item;
  const Detailpage({Key? key, required this.item}) :assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 2,
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=> Homepage()),);
          },

        ),
        title: Text(item.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

      ),

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(item.image,height: 110,),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(item.name,
                                      style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text("\@${item.username}",
                                        style: TextStyle(
                                             fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 30,),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                        child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Email:  ', style: TextStyle(fontSize: 17, color: Color(0xff8C8C8C),)),
                            TextSpan(text: item.email, style: TextStyle(fontSize: 16, color: Color(0xff141414),)),
                          ],
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                        child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Address:  ', style: TextStyle(fontSize: 17, color: Color(0xff8C8C8C),)),
                            TextSpan(text: "Victor Plains,Suite 879, Wisokyburgh, 90566-7771", style: TextStyle(fontSize: 16, color: Color(0xff141414),)),
                          ],
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                        child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Phone:  ', style: TextStyle(fontSize: 17, color: Color(0xff8C8C8C),)),
                            TextSpan(text: item.phone, style: TextStyle(fontSize: 16, color: Color(0xff141414),)),
                          ],
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                        child: RichText(text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Website:  ', style: TextStyle(fontSize: 17, color: Color(0xff8C8C8C),)),
                            TextSpan(text: item.website, style: TextStyle(fontSize: 16, color: Color(0xff141414),)),
                          ],
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
