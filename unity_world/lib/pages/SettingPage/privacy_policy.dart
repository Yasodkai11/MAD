import 'package:flutter/material.dart';


class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  String selectedSection = 'Highlights';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Privacy Policy'), 
      ),
      
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
            child: Text(
              "Privacy Policy",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 144, 255),
                fontSize: 32, 
                fontWeight: FontWeight.bold),
            ),
            ),


            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Code Wizard built the Unity World app as an Open Source app. This SERVICE is provided by code wizard at no cost and is intended for use as is.This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.",
                   style: TextStyle(
                    fontSize: 15, 
                    fontWeight: FontWeight.normal),
                ),
              ),
            


            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5, left: 50),
              child: const Text(
                "Last updated: July 25, 2023",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 82, 81, 81),
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ),



            
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Information Collection and Use",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),




            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: const Text(
                  "Information We Collect",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to full name, student id, password, email, username. The information that we request will be retained by us and used as described in this privacy policy.The app does use third-party services that may collect information used to identify you.Link to the privacy policy of third-party service providers used by the app",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            

  
            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Log Data\n ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.',
                  ),
                ],
              ),
            ),



            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Cookies\n ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers.These are sent to your browser from the websites that you visit and are stored on your devices internal memory.'
                  ),
                   TextSpan(
                    text:
                      'This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.',
                  ),
                ],
              ),
            ),




            const SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 1, bottom: 1),
                child: const Text(
                  "Service Providers\n",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),




            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(top: 1, bottom: 1),
              child: const Text(
                "We may employ third-party companies and individuals due to the following reasons:\n"
                "      - To facilitate our Service;\n"
                "      - To provide the Service on our behalf;\n"
                "      - To perform Service-related services;\n"
                "      - To assist us in analyzing how our Service is used.\n"
                "We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),


 const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Security:\n ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.Links to Other Sites.This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.',
                  ),
                ],
              ),
            ),




             const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: "Children's Privacy\n",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.',
                  ),
                ],
              ),
            ),




const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 17),
                children: [
                  TextSpan(
                    text: "We use the information collected for the following purposes:\n",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),


const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(top: 1, bottom: 5, left:5, right: 20),
              child: const Text(
                  "Account Management: \n"
                    "Update Timetable: \n"
                    "Join Club\n"
                    "Send Event Notification:",
                  style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),


            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: "Changes to This Privacy Policy\n",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.',
                  ),
                ],
              ),
            ),



            const SizedBox(height: 16),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 17),
                children: [
                  TextSpan(
                    text: "Contact Us",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

         

       const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: "If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at  ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text:
                        'codewizard@nsbm.gmail.com.',
                    style: TextStyle(
                       color: Color.fromARGB(255, 30, 144, 255)),
                  ),
                ],
              ),
            ),
        
















            



          ],
        ),
      ),
    );
  }
}
