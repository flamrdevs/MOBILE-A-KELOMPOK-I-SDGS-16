class UserModel {
  String id;
  String name;
  String email;
  String password;
  
  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
  });
  
  factory UserModel.createUser(Map<String, dynamic> object) {
    return UserModel(
      id: object['id'],
      name: object['name'],
      email: object['email'],
      password: object['password'],
    );
  }
  
  static List<UserModel> all() {
    return [
      new UserModel(
        id: '1',
        name: 'user1',
        email: 'user1@email.com',
        password: 'user1'
      ),
      new UserModel(
        id: '2',
        name: 'user2',
        email: 'user2@email.com',
        password: 'user2'
      ),
    ];
  }
}