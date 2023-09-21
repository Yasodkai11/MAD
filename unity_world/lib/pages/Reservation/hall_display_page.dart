import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/components/menu_notifi_account.dart';
import 'package:unity_world/pages/Reservation/reservation_form.dart';

<<<<<<< HEAD

=======
>>>>>>> refs/remotes/origin/main
class ReservationPage extends StatefulWidget {
 

 @override
 _ReservationPageState createState() => _ReservationPageState();
 

}   

class _ReservationPageState extends State<ReservationPage> {
  int selectedHall = 0;
  int selectedTime = 0;

  final List<String> hallNumbers = ['C1-L101', 'C1-005', 'C1-006','C1-007','C1-008']; 
  final List<String> reservedTimes = ['9:00 AM-12:00AM', 'Avaiable', '2:00 PM-4:00pm','Avaiable','Avaiable'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: MyAppBar(
        title: Text(
          "hall-display"
        )
      ),

      drawer: MyDrawer(
        child: Container(),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "HALL RESERVATION",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 30, 144, 255),
              ),
            ),
            SizedBox(height: 10,),
            SvgPicture.asset(
              'assets/illustrations/Reservation.svg',
              height: size.height *0.28,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1, 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hall Number',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),

                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: hallNumbers.length,
                        itemBuilder: (context, index) {
                          return ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=>MyFormApp()
                                ),
                              );
                              setState(() {
                                selectedHall = index;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary:  Color.fromARGB(255, 46, 141, 213),
                              
                            ),
                            child: Text(hallNumbers[index]),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Expanded( 
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 100,),
                      Text(
                        'Reserved Time',

                        style: TextStyle(
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: reservedTimes.length,
                        itemBuilder: (context, index) {
                          return ElevatedButton(
                            onPressed: () {
                              
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 126, 124, 124),
                            ),
                            child: Text(reservedTimes[index]),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}