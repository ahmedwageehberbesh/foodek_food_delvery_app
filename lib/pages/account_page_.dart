import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  Widget ordersVoucherItem(BuildContext context, String title, String count) {
    return Column(
      children: [
        Text(
          count,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }

  Widget itemTappedTile(
    BuildContext context, {
    required String title,
    String? subtitle,
    required IconData icon,
  }) {
    final size = MediaQuery.of(context).size;
    final bool isportrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return ListTile(
      leading: Icon(
        icon,
        size: isportrait ? size.height * 0.035 : size.height * 0.07,
      ),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: isportrait ? size.height * 0.025 : size.height * 0.05,
      ),
      onTap: () {},
    );
  }

  Widget personPhoto(double width, double height) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/Ahmed_Wageeh.jpeg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isportrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final nameText = Text(
      'Ahmed Wageeh',
      style: Theme.of(
        context,
      ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600),
    );
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (isportrait) ...[
              personPhoto(size.width * 0.5, size.height * 0.25),
              nameText,
              const SizedBox(height: 16),

              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ordersVoucherItem(context, 'Orders', "40"),
                  ordersVoucherItem(context, 'Vouchers', "20"),
                ],
              ),
            ],
            if (!isportrait) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      personPhoto(size.width * 0.5, size.height * 0.35),
                      const SizedBox(height: 24.0),
                      nameText,
                      const SizedBox(height: 16.0),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          ordersVoucherItem(context, 'Orders', "40"),
                          SizedBox(width: size.width * 0.1),
                          ordersVoucherItem(context, 'Vouchers', "20"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
            const SizedBox(height: 32.0),
            const Divider(),
            itemTappedTile(
              context,
              title: "Last Order",
              icon: Icons.shopping_cart,
            ),
            const Divider(),
            itemTappedTile(
              context,
              title: "Available Vouchers",
              icon: Icons.card_giftcard,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
