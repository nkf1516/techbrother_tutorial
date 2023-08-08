import 'package:flutter/material.dart';

class CustomerOrderDetails extends StatefulWidget {
  const CustomerOrderDetails({Key? key}) : super(key: key);

  @override
  State<CustomerOrderDetails> createState() => _CustomerOrderDetails();
}

class _CustomerOrderDetails extends State<CustomerOrderDetails> {
  late String select=" ";
  List<String> listItem = [];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Details',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 32),),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  'Ticket ID:',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 32,
                  width: 120,
                  child: Center(
                      child: Text(
                        'X X X X X X',
                        style: TextStyle(
                            fontSize: 19, color: Color(0xFFFFFFFF)),
                      )),
                  decoration: BoxDecoration(
                    color: Color(0xFF10C500),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Status:',style: TextStyle(fontSize: 13),),
                Text('On-going',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text('Vehicle Details:',style: TextStyle(fontSize: 25),),
            const SizedBox(
              height: 3,
            ),
            Container(

              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle Number:',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'MH14HPXXXX',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),



                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Brand:',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Honda',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'Model:',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'City',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Customer Name', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow,
                    image: DecorationImage(image: NetworkImage('')),
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
                Container(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Name:',style: TextStyle(fontSize: 14)),
                          Text('Customer Name',style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        children: [
                          Text('Workshop Name:',style: TextStyle(fontSize: 14)),
                          Text('Workshop Name',style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text('Services Added:',style: TextStyle(fontSize: 25),),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tyre Puncture'),
                Text('Rs.700'),
              ],
            ),
            Divider(color: Color(0xFFD9D9D9), thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Windshield Cleaning'),
                Text('Rs.700'),
              ],
            ),
            Divider(color: Color(0xFFD9D9D9), thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Brake Oil Replacement'),
                Text('Rs.700'),
              ],
            ),
            Divider(color: Color(0xFFD9D9D9), thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Battery Check'),
                Text('Rs.700'),
              ],
            ),
            Divider(color: Color(0xFFD9D9D9), thickness: 2,),
            SizedBox(
              height: 5,
            ),
            Text('Add new service:',style: TextStyle(fontSize: 23),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 200,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFFFFFFF),

                    boxShadow:[
                      BoxShadow(
                        color: Color(0xFF000000),
                        blurRadius: 2,
                      ),
                    ],

                  ),

                  child: DropdownButton(
                    hint: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text("Select a service:", style: TextStyle(fontSize: 15),),
                    ),

                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 28,
                    isExpanded: true,
                    underline: SizedBox(),

                    value: select,
                    onChanged: (newValue) {
                      setState(() {
                        select = newValue!;
                      });
                    },
                    items: listItem.map((valueItem) {
                      return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem));
                    }).toList(),
                  ),
                ),

                Container(

                  height: 25,
                  width: 90,
                  child: Center(child: Text('ADD', style: TextStyle(fontSize: 15,color: Color(0xFFFFFFFF)),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF10C500),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            Container(
              margin: EdgeInsets.only(bottom: 0),
              width: 340,
              height: 63,
              decoration: BoxDecoration(
                color: Color(0xFF000000),
                borderRadius: BorderRadius.circular(20),

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Taking much time?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('Convert this to scheduled service now!',style: TextStyle(color: Colors.white,fontSize: 10),),
                      ],
                    ),
                    Container(

                      height: 30,
                      width: 100,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),


                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward,color: Colors.white,size: 35,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 0),
              width: 380,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFF000000),

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bill Amount', style: TextStyle(fontSize: 5,color:Colors.white),),
                        Text('Rs.2800',style: TextStyle(fontSize: 15,color:Colors.white),),
                      ],
                    ),
                    Container(

                      height: 30,
                      width: 100,
                      child: Center(child: Text('PAY NOW', style: TextStyle(fontSize: 15,color: Color(0xFFFFFFFF)),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF10C500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
