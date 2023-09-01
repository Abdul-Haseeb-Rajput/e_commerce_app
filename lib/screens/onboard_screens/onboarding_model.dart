class OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      title: "Your holiday "
          "shopping "
          "delivered to Screen one",
      image: 'assets/onboardImages/Onboard1.png',
      discription:
          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1"),
  OnbordingContent(
      title: "Your holiday "
          "shopping "
          "delivered to Screen two",
      image: 'assets/onboardImages/Onboard2.png',
      discription: "There's something for everyone "
          "to enjoy with Sweet Shop "
          "Favourites Screen 1"),
];
