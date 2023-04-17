class WpConfig {
  // YOUR WEBISTE URL
  static const String websiteUrl = "https://mc.tanahbumbukab.go.id";

  //FEATURE TAG ID
  static const int featuredTagID = 414;

  //VIDEO TAG ID
  static const int videoTagId = 447;

  // Hometab 4 categories
  // -- 'Serial Number' : [Category Id, 'Category Name'] -- Length should be 4.
  static const Map selectedCategories = {
    '1': [533, "1 Desa 1 Masjid"],
    '2': [3, "Pemerintahan"],
    '3': [10, "Kesehatan"],
    '4': [379, "Daerah"],
    '5': [4, "Pendidikan"],
  };

  /*
  List of blocked categories. Do nothing if you don't want to block any categories.
  If you want to bloc any category and it's posts then enter values like these:

  Example: If you want to block category id 10 & 12, then it will be look like this:

    static const String blockedCategoryIds = "10,12";
    static const String blockedCategoryIdsforPopularPosts = "-10,-12";

  */

  static const String blockedCategoryIds = "";
  static const String blockedCategoryIdsforPopularPosts = "";

  // FEATURE IMGAE -  IF YOUR POSTS DON"T HAVE A FEATURE IMAGE
  static const String randomPostFeatureImage =
      "https://innov8tiv.com/wp-content/uploads/2017/10/blank-screen-google-play-store-1280x720.png";

  // FEATURE CATEGORY IMGAE -  IF YOU HAVEN'T DEFINE A COVER IMAGE FOR A CATEGORY IN THE LIST BELOW
  static const String randomCategoryThumbnail =
      "https://mc.tanahbumbukab.go.id/wp-content/uploads/2023/03/playstore.png";

  // ENTER CATERGORY ID AND ITS COVERS IMAGE
  static const Map categoryThumbnails = {
    // categoryID : 'category thumbnail url'
    9: "https://4.bp.blogspot.com/-dzHwRV__GFw/V-Ir8LGe4jI/AAAAAAAAaCI/xpR3U5OluGAeyT9nK4WzLCVMlOIAL1WyQCLcB/s1600/masjid%2Bagung%2Bnurussalam%2Btanah%2Bbumbu%2B%25281%2529.png",
    3: "https://aktualkalsel.com/wp-content/uploads/2021/03/IMG-20210322-WA0019.jpg",
    4: "https://i.ytimg.com/vi/S6oflK5u4lg/maxresdefault.jpg",
  };
}
