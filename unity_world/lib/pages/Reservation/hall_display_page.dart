

class ReservationPage extends StatefullWidget {
 

 @override
 _ReservationPageState createState() => _ReservationPageState();
 

}   

class _ReservationPageState extends State<ReservationPage> {
  int selectedHall = 0;
  int selectedTime = 0;

  final List<String> hallNumbers = ['C1-L101', 'C1-005', 'C1-006','C1-007','C1-008']; 
  final List<String> reservedTimes = ['9:00 AM-12:00AM', 'Avaiable', '2:00 PM-4:00pm','Avaiable','Avaiable'];