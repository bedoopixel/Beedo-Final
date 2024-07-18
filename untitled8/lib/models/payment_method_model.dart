class PaymentMethod {
  int id;
  String name;

  PaymentMethod({required this.id,required this.name});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) {
    return PaymentMethod(
        id: json['id'],
        name: json['name']
    );

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name']=name;
    return data;
  }
}
