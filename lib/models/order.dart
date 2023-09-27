// ignore_for_file: public_member_api_docs, sort_constructors_first
class Orderdata {
  final String orderid;
  final String userid;
  final String foodname;
  final String quantity;
  final String fooddesc;
  final String datetime;
  final String amount;
  Orderdata({
    required this.orderid,
    required this.datetime,
    required this.userid,
    required this.foodname,
    required this.quantity,
    required this.fooddesc,
    required this.amount,
  });
}
