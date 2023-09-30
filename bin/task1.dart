import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  Dio client = Dio();
  Response res = await client.get("https://dummyjson.com/products");
  if (res.statusCode == 200) {
    final products = res.data['products'] as List<dynamic>;

    int sumCountOnStock = 0;

    products.forEach((p) {
      sumCountOnStock += (p['stock'] as int);
    });
    print(sumCountOnStock);
  }
}
