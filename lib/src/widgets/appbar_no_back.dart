import 'package:fit_combat/src/utils/images.dart';
import 'package:flutter/material.dart';

class AppBarNoBack extends StatelessWidget implements PreferredSizeWidget {
  const AppBarNoBack({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 25.0,
            top: 5,
            bottom: 5,
          ),
          child: CircleAvatar(
            radius: 42,
            foregroundImage: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/8f40/f6ec/404a78dc69b2900df198d747ae6bd5b4?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RLvGSOF4u2lcME~svVZQDz040DwPT7x2PScixDWSmwVAgvhy8WGPvbsvSa4LhT48eUg~mlERBhRkoN-my1tzKD~eM1RhGzP8NrDlZxfIFiNmADljLrBwr8i3QmHdpDV9lmxyV2SJxozQ~v5ZjvVvNXaOTF4PfVawPBoYxSqV1fRmaRCvqVW7tX7hYKm3F8U4Qa4RDmRRmfs5t66uuGrPkIk0bvii6Q3WqotzRxhVLrQ3A59gfqQIyrfTxpbSLM7iXDfGUzNAmFpGle3gcybw85cD9LEKVLRiivtKwPkefxOSbx0qrclfsku4dgd8uGz2dYZXRQ8qie4aFKz4gYUy6Q__',
            ),
          ),
        ),
        leadingWidth: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'online',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              'Ashwan',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        actions: [
          actionSVG,
          const SizedBox(
            width: 25,
          ),
        ],
      ),
    );
  }
}
