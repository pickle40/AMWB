class MResep {
  String namamenu;
  String URL;
  String gambarURL;

  MResep(this.namamenu, this.URL, this.gambarURL);

  static List<MResep> isiResep = [
    MResep(
        "Rendang Daging",
        "https://cookpad.com/id/resep/801695-rendang-daging?via=premium_page_recipe_teaser",
        "https://img-global.cpcdn.com/recipes/88e7a35591b878af/680x482cq70/rendang-daging-foto-resep-utama.webp"),
    MResep(
        "Rendang Ayam Kampung Khas Minang",
        "https://cookpad.com/id/resep/8517238-rendang-ayam-kampung-khas-minang?via=premium_page_recipe_teaser",
        "https://img-global.cpcdn.com/recipes/3300e52377e6e354/680x482cq70/rendang-ayam-kampung-khas-minang-foto-resep-utama.webp"),
    MResep(
        "Nasi Briyani Simple (HAMPERS Lebaran)",
        "https://cookpad.com/id/resep/14963878-nasi-briyani-simple-hampers-lebaran?ref=guest_feed",
        "https://img-global.cpcdn.com/recipes/ec2a0fb3849bb246/680x482cq70/nasi-briyani-simple-hampers-lebaran-foto-resep-utama.webp"),
    MResep(
        "Hampers Kue Lebaran",
        "https://cookpad.com/id/resep/14980129-hampers-kue-lebaran?ref=guest_feed",
        "https://img-global.cpcdn.com/recipes/4f11072ac485e1b8/680x482cq70/hampers-kue-lebaran-foto-resep-utama.webp"),
    MResep(
        "Sate Ayam Tanpa Tusuk Bumbu Kacang",
        "https://cookpad.com/id/resep/16173178-sate-ayam-tanpatusuk-bumbu-kacang?ref=guest_feed",
        "https://img-global.cpcdn.com/recipes/550c353d682cbd10/680x482cq70/sate-ayam-tanpatusuk-bumbu-kacang-foto-resep-utama.webp"),
    MResep(
        "Gulai Udang Kentang Khas Padang",
        "https://cookpad.com/id/resep/16173181-gulai-udang-kentang-khas-padang?ref=guest_feed",
        "https://img-global.cpcdn.com/recipes/6c21a2c391b6961a/680x482cq70/gulai-udang-kentang-khas-padang-foto-resep-utama.webp"),
    MResep(
        "Selai Nanas Homemade",
        "https://cookpad.com/id/resep/2840202-selai-nanas-homemade?ref=guest_feed&via=cooksnap_carousel_celebration",
        "https://img-global.cpcdn.com/recipes/e3c188cacf7d7d9a/680x482cq70/selai-nanas-homemade-foto-resep-utama.webp"),
  ];
}
