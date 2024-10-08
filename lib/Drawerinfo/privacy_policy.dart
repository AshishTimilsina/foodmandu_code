import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRIVACY POLICY'),
        backgroundColor: const Color(0xFF5B9A8B),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Text(
                  "Foodmandu Pvt. Ltd. operates the ‘Foodmandu’ app (both in Google Play Store and Apple App Store) and it's website, which provides the service. This page is used to inform app and website users regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our service. If you choose to use our service, then you agree to the collection and use of information in relation with this policy. The personal information that we collect are used for providing and improving the service. We will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms of Use, which is accessible at our Terms of Use page, unless otherwise defined in this Privacy Policy."),
              SizedBox(
                height: 10,
              ),
              Text(
                'Information Collection and Use',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "We may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, email, postal address, your GPS location, profile pictures. The information we collect are used to contact or identify you, process the orders placed with the participating merchants and is shared as needed to process the orders. We may use the user's e-mail address to convey occasional newsletters and updates regarding new participating merchants, specials offers on our platforms and other useful information related to our service. We also log and store users' IP addresses, cookie information and the information about the users' website experience, preferences and the pages they request. You can request to delete your personal information and registered account if you wish to do so by writing to us at support@foodmandu.com and our customer support staffs will guide you through the process."),
              SizedBox(
                height: 10,
              ),
              Text(
                'Log Data',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "We want to inform you that whenever you use our app or website, we collect information that app sends to us that is called Log Data. This Log Data may include information such as your computer’s Internet Protocol (“IP”) address, app version, screens of our service that you access, the time and date of your access, the time spent on those screens, and other statistics"),
              SizedBox(
                height: 10,
              ),
              Text(
                'Service Providers',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "We may employ third-party companies and individuals due to the following reasons: To facilitate our service; To provide the service on our behalf; To perform service-related services; or To assist us in analyzing how our service is used. We want to inform our service users that in certain situations, we may need to give access to your Personal Information to these third parties. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose."),
              SizedBox(
                height: 10,
              ),
              Text(
                'Security',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the Internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security."),
              SizedBox(
                height: 10,
              ),
              Text(
                'Links to Other Sites',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Our service may contain links to other sites/apps. If you click on a third-party link, you will be directed to that site/app. Note that we do not operate these external sites/apps. Therefore, we strongly advise you to review the Privacy Policy of these websites and apps. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites, apps or services."),
              SizedBox(
                height: 10,
              ),
              Text(
                'Changes to This Privacy Policy',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page."),
              SizedBox(
                height: 10,
              ),
              Text(
                'Contact us',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us."),
            ],
          ),
        ),
      ),
    );
  }
}
