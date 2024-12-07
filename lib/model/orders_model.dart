class OrdersModel {
  int orderId;
  int itemQuantity;
  String phoneNumber;
  String address;

  OrdersModel({
    required this.address,
    required this.itemQuantity,
    required this.orderId,
    required this.phoneNumber,
  });
}
