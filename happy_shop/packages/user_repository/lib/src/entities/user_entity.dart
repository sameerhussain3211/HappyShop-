class MyUserEntity {
  String userId;
  String email;
  // String password;
  String name;
  // String address;
  // String phoneNumber;
  bool hasActiveCard;

  MyUserEntity(
      {required this.userId,
      required this.email,
      required this.name,
      // required this.password,
      required this.hasActiveCard});

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCard': hasActiveCard
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        userId: doc['userId'],
        email: doc['email'],
        name: doc['name'],
        hasActiveCard: doc['hasActiveCard']);
  }
}
