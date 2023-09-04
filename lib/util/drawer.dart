import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../util/chroma.dart';

class CustomDrawer extends StatefulWidget {
  //final Function(Color) onColorChange;
  const CustomDrawer ({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}
class _CustomDrawerState extends State<CustomDrawer> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          //gradient: Chroma.gradient,
            image: DecorationImage(
                image: AssetImage('assets/theme_photos/theme3.jpg'),
                fit: BoxFit.fill),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            height: double.maxFinite,
            color: Chroma.whiteColor.withOpacity(0.2),
            child: Drawer(
              backgroundColor: Colors.transparent,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90.h,
                        width: 90.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/theme_photos/user.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: Chroma.whiteColor,),
                        title: Text('User Details',style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        subtitle: Text('View and edit user information',style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        onTap: () {
                        },
                      ),
                      ExpansionTile(
                        leading: const Icon(Icons.color_lens, color: Chroma.whiteColor,),
                        title: Text('Themes',style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        children: [
                          //  for (Color color in ColorUtils.colorList)
                          ListTile(
                            leading: const Icon(Icons.color_lens_outlined, color: Chroma.whiteColor,),
                            title: Text('Theme 1',style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,),
                            onTap: () {
                              setState(() {

                              });
                              Navigator.pop(context);
                            },
                          ),

                          ListTile(
                            leading: const Icon(Icons.color_lens_outlined, color: Chroma.whiteColor,),
                            title: Text('Theme 2',style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.color_lens_outlined, color: Chroma.whiteColor,),
                            title: Text('Theme 3',style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.color_lens_outlined, color: Chroma.whiteColor,),
                            title: Text('Theme 4',style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.color_lens_outlined, color: Chroma.whiteColor,),
                            title: Text('Theme 5',style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      ListTile(
                        leading: const Icon(Icons.info, color: Chroma.whiteColor,),
                        title: Text('App Details',style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        subtitle: Text('View information about the app',style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        onTap: () {
                          // Handle app details action
                        },
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(Icons.help, color: Chroma.whiteColor,),
                        title: Text('Help',style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        onTap: () {
                          // Handle help action
                        },
                      ),
                      ExpansionTile(
                        leading: const Icon(Icons.info, color: Chroma.whiteColor,),
                        title: Text('About Developer',style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,),
                        children: [
                          Container(
                            height: 90.h,
                            width: 220.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              image: const DecorationImage(
                                image: AssetImage('assets/theme_photos/aks.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text('This is Akshay',style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                          Text('Flutter Developer',style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
