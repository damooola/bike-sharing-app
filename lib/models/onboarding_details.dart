class OnboardingDetails {
  final String title;
  final String description;
  final String imagePath;

  OnboardingDetails({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  static final locateDetails = OnboardingDetails(
    title: "Locate",
    description:
        "Excepteur sint occaecat\n cupidatat non proident, sunt\n in culpa qui officia.",
    imagePath: "assets/onboarding_images/Locate.png",
  );

  static final unlockDetails = OnboardingDetails(
    title: "Unlock",
    description:
        "Sunt in culpa qui officia\n deserunt mollit anim id\n est laborum.",
    imagePath: "assets/onboarding_images/Unlock.png",
  );

  static final rideDetails = OnboardingDetails(
    title: "Ride",
    description: "Culpa qui officia deserunt\n mollit anim id est laborum.",
    imagePath: "assets/onboarding_images/Ride.png",
  );
}
