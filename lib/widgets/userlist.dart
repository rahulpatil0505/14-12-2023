class User {
  final String name;
  final String address;
  final String email;
  final String photoUrl;
  final String designation;

  User({
    required this.name,
    required this.address,
    required this.email,
    required this.designation,
    required this.photoUrl,
  });
}

List<User> users = [
  User(
      name: 'Rahul Patil',
      address: 'Nava Naroda Krishna nagar Ahmedabad 382333',
      email: 'rahuldpatil505@gmail.com',
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?w=740&t=st=1702561224~exp=1702561824~hmac=ab3ace6579094c7762ab29db385d30135c769ce5db474694a11118c98de833f1"),
  User(
      name: "Vipul Patel",
      address: "Nana chiloda ,Ahmedabad 382333",
      email: "aman65@gmail.com",
      designation: "Senoir Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=740&t=st=1702546086~exp=1702546686~hmac=afa8108da513374ea54041523f9b90157271b6a98a3efd70fac0bf7f8ce7c521"),
  User(
      name: "Nishant Koli",
      address: "Nikol Near Sell Petrol pummp , Ahmedabad 382340",
      email: "nk321@gmail.com",
      designation: "UI/UX Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=740&t=st=1702546086~exp=1702546686~hmac=afa8108da513374ea54041523f9b90157271b6a98a3efd70fac0bf7f8ce7c521"),
  User(
      name: "Nikita Patel",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "niku12@gmail.com",
      designation: "Python Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Monika Desai",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "monika212@gmail.com",
      designation: "Human Resources",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "sonali kumari",
      address: "New nikol opp of Ring road , Ahmedabad 382541",
      email: "sonu21@gmail.com",
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Nikita Dave",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "niku12@gmail.com",
      designation: "udoo Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Priya Patel",
      address:
          "Near shealby hospital opp of hanspura ring road , Ahmedabad 382541",
      designation: "Flutter Devloper",
      email: "niku12@gmail.com",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Nilam Patil",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "niku12@gmail.com",
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Nik Patel",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "niku12@gmail.com",
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?w=740&t=st=1702561224~exp=1702561824~hmac=ab3ace6579094c7762ab29db385d30135c769ce5db474694a11118c98de833f1"),
  User(
      name: "Nik Patel",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "niku12@gmail.com",
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Siya Lalwani",
      address: "Ranip Neat Bus Stop , Ahmedabad 382541",
      email: "siya36@gmail.com",
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/brunette-business-woman-with-wavy-long-hair-blue-eyes-stands-holding-notebook-hands_197531-343.jpg?w=360&t=st=1702545959~exp=1702546559~hmac=aafb2a63ab11facced6193f9c47687df098cbe1e00260b4f8a120e9872893102"),
  User(
      name: "Sujal Kumar",
      address:
          "Shivaranjni cross road ,opp of hp Petrol pump, setalight , Ahmedabad 382541",
      email: "sanjaykm2121@gmail.com",
      designation: "Flutter Devloper",
      photoUrl:
          "https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?w=740&t=st=1702561224~exp=1702561824~hmac=ab3ace6579094c7762ab29db385d30135c769ce5db474694a11118c98de833f1"),
];
