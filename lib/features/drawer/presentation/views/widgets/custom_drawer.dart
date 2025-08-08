import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';
import 'package:invoicing_dashboard/features/drawer/data/model/drawer_item_model.dart';
import 'package:invoicing_dashboard/features/drawer/data/model/user_info_model.dart';
import 'package:invoicing_dashboard/features/drawer/presentation/views/widgets/active_and_inactive_item.dart';
import 'package:invoicing_dashboard/features/drawer/presentation/views/widgets/drawer_items_list_view.dart';
import 'package:invoicing_dashboard/features/drawer/presentation/views/widgets/user_info_list_tile.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com'),
          ),
        ),
         SliverToBoxAdapter(
          child: SizedBox(
            height:size.height*0.01,
          ),
        ),
        const DrawerItemsListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                  child: SizedBox(
                height: size.height*0.1,
              )),
              const InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Setting system', image: Assets.imagesSettings),
              ),
              const InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Logout account', image: Assets.imagesLogout),
              ),
              const SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ],
    );
  }
}
