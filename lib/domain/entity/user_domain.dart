import '../../data/models/user_model.dart';

class UserDomain {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;

  UserDomain(this.id,this.name,this.username,this.email,this.address,this.phone,this.company,this.website);
}