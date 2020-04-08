
import 'package:lavalo/Orders/Models/orders.dart';
import 'package:lavalo/User/Models/user.dart';
import 'package:lavalo/User/Repository/cloud_firestore_api.dart';


class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
  Future<void> updateOrderDate(Order order) => _cloudFirestoreAPI.updateOrderDate(order);



  }