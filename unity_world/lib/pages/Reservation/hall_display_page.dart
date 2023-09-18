

class ReservationPage extends StatefullWidget {
 

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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("HALL RESERVATION", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            SvgPicture.asset(
              'assets/illustration/reservation.svg',
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