import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/service_model.dart';
import '../views/widgets/service_card.dart';

class ServiceViewModel extends ChangeNotifier {
  List<ServiceCard> _cards = [];
  bool _isLoading = false;
  String? _error;

  List<ServiceCard> get cards => _cards;
  bool get isLoading => _isLoading;
  String? get error => _error;

  ServiceViewModel() {
    fetchCards();
  }

  Future<void> fetchCards() async {
    _isLoading = true;
    notifyListeners();

    try {
      final snapshot = await FirebaseFirestore.instance.collection('serviceCard').get();
      _cards = snapshot.docs.map((doc) {
        final service = ServiceModel.fromMap(doc.data());
        return ServiceCard(
          title: service.title,
          subtitle: service.description,
          iconPath: service.icon,
          imagePath: service.image,
        );
      }).toList();
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}