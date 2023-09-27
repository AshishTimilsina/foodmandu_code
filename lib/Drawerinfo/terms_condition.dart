import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TERMS & CONDITIONS'),
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
                'Terms of Usage ',
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
                  "Welcome to our website. If you continue to browse and use this website, you are agreeing to comply with and be bound by the following terms and conditions of use, which together with our privacy policy govern Foodmandu’s relationship with you in relation to this website. If you disagree with any part of these terms and conditions, please do not use our website. The term ‘Foodmandu.com’ or ‘us’ or ‘we’ refers to the owner of this website. The term ‘you’ or 'our customers' or 'website users' refer to the user or viewer of our website."),
              SizedBox(
                height: 10,
              ),
              Text(
                'GENERAL',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Foodmandu.com is owned and operated by Foodmandu Pvt. Ltd. Our services are limited to provide restaurant food ordering and delivery service to our customers. We are in no way responsible for the quality of foods and its packaging offered by its merchant members.Please note that in our sole discretion at any time and with or without notice, we may offer any kind of incentives or promotions, shorten or extend the duration of any incentive or promotion program and/or terminate or modify any incentive or promotion program."),
              SizedBox(
                height: 10,
              ),
              Text(
                'PRICES & OTHER INFORMATION',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "The information regarding price, product specifications and availability contained on the Site has been provided by member merchants. The prices charged by the member merchants on this website are generally the same as the prices charged in their physical stores/restaurants at the time an order is delivered, shipped or available for pickup. Although Foodmandu attempts to make certain that the prices listed on the Site and those posted in the stores on the date they are viewed on the Site are the same, and that out-of-stock items are clearly marked or removed from the inventory, prices and product availability may change, particularly if you select a delivery or pickup date that is different from the date on which you place your order.Moreover, though every effort is made to ensure accuracy in posting pricing information, discrepancies do occur. In the event that the restaurant/store price and the price posted on the Site are different, the restaurant/store price will prevail in every case.While Foodmandu has undertaken to confirm the accuracy of the information contained on this Site, mistakes can be made, due both to inaccurate reporting of accurate information and accurately reporting inaccurate information. Of course, if you become aware that the Site contains inaccurate information, please let us know by contacting us."),
              SizedBox(
                height: 10,
              ),
              Text(
                'ORDERING AND PAYMENT',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "All ordering is performed online or via telephone. Buyers are usually billed directly by merchant members for their orders, and 'Foodmandu' will be the name that appears on the bills you receive from the merchants. But Foodmandu may provide you separate delivery slip and redemption slips in case there is any delivery charges or cash back offer. Foodmandu shall not in any manner be considered the seller of the food. You need to pay for the ordered food in advance in Cash to us or at the time of delivery to our delivery staff. There is no online payment facilities provides till date."),
              SizedBox(
                height: 10,
              ),
              Text(
                'REFUND POLICY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Foodmandu takes customer satisfaction very seriously. In the case of problems with your food order, please contact us. In appropriate cases, Foodmandu will issue full or partial refunds. For example: if you did not receive your order or received an incorrect order, you may be issued a full refund; if part of your order is missing, we may issue a partial refund. In every event, we will do our best to ensure your satisfaction."),
              SizedBox(
                height: 10,
              ),
              Text(
                "PROPERTY RIGHTS IN THE SITE AND CONTENT; INFORMATIONAL PURPOSES AND COMPLIANCE WITH LAW",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "The Site and the Content are our property and are protected by applicable copyright, patent, trademark and other intellectual property laws. Except as expressly authorized herein, you may not reproduce, transmit, sell, display, distribute, publish, broadcast, circulate, modify, disseminate or commercially exploit the Site or the Content in any manner (including electronic, print or other media now known or hereafter developed) without our written consent. Use of the Site or the Content in violation of these Terms of Use, or any applicable law, rule or regulation (whether of Nepal or other countries), or the rights of any third party is prohibited. You agree not to use the Site or the Content for any unlawful purposes and comply with any and all requests from us to protect our respective rights in the Site and the Content. You may use the Site and the Content only for your personal use. You may download the Content to your computer and print out a hard copy for your reference and internal use and display, but you will not remove any copyright or other notices contained in the Content. We expressly prohibit the use of devices (including software) designed to provide repeated automated access to the Site and the Content for any commercial purpose except for those expressly authorized by us. We reserve the right to take any and all measures necessary to prevents"),
            ],
          ),
        ),
      ),
    );
  }
}
