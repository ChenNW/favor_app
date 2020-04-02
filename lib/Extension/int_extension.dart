import 'package:flutterfavorapp/UI/Shared/size_fit.dart';

extension doule_extension on int{


  double get Rpx{

    return size_fit.setRpx(this.toDouble());

  }

  double get Pt{

    return size_fit.setPt(this.toDouble());

  }


}