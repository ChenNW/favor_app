
import 'dart:ui';
class size_fit {

  static double physicalWidth;
  static double physicalheight;//物理像素
  static double screenWidth;
  static double screenHeight;
  static double rpx;
  static double px;
  static double dpr;
  static double statusHeight;
  static double tabbarHeight;

  static void initialize({double standardSize = 750}){

    // 1.物理像素
    physicalWidth = window.physicalSize.width;
    physicalheight = window.physicalSize.height;

    // 2.获取dpr(像素比)
    dpr = window.devicePixelRatio;

    //3.宽度和高度
    screenWidth = physicalWidth/dpr;
    screenHeight = physicalheight/dpr;

    //4.状态栏高度
    statusHeight = window.padding.top/dpr;

    //5.计算rpx
    rpx = screenWidth/standardSize;
    px = screenWidth/standardSize*2;

    //6.tabbar高度
    tabbarHeight = window.padding.bottom/dpr;


  }

  static double setRpx (double size){

    return rpx * size;
  }

  static double setPt (double size){

    return px*size;
  }


}