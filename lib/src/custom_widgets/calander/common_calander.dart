import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List menuItems;
  final Color? drawerColor;
  final double? imageRadius;
  final EdgeInsetsGeometry? imagePadding;
  final Widget? divider;
  final ImageProvider<Object>? backgroundImage;

  const CustomDrawer({
    Key? key,
    required this.menuItems,
    this.drawerColor,
    this.imageRadius,
    this.imagePadding,
    this.divider,
    this.backgroundImage,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: drawerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: imagePadding ?? EdgeInsets.only(top: 20, left: 20),
              child: CircleAvatar(
                radius: imageRadius ?? 30,
                backgroundImage: Image.network(
                        'https://images.pexels.com/photos/2246476/pexels-photo-2246476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                    .image,
              ),
            ),
            divider ?? Divider(thickness: 2),
            Expanded(
              child: ScrollConfiguration(
                behavior: ScrollBehavior().copyWith(overscroll: false),
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MenuItem(
                        text: menuItems[index]['text'],
                        icon: menuItems[index]['icon'],
                        onClicked: () => selectedItem(context, index));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        print('clicked index = $index');
        break;
      case 1:
        print('clicked index = $index');
        break;
      case 2:
        print('clicked index = $index');
        break;
      case 3:
        print('clicked index = $index');
        break;
      case 4:
        print('clicked index = $index');
        break;
      case 5:
        print('clicked index = $index');
        break;
    }
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}

class SearchFieldDrawer extends StatelessWidget {
  const SearchFieldDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color, fontSize: 14),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(
          Icons.search,
          color: color,
          size: 20,
        ),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
}
