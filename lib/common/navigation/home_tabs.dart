enum HomeTabs {
  menu(),
  cart();

  factory HomeTabs.fromString(String value) {
    switch (value) {
      case 'menu':
        return HomeTabs.menu;
      case 'cart':
        return HomeTabs.cart;
      default:
        return HomeTabs.menu;
    }
  }
}
