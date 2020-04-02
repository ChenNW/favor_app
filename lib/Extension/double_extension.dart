

import 'package:flutterfavorapp/UI/Shared/size_fit.dart';

extension doule_extension on double{


  double get Rpx{

    return size_fit.setRpx(this);

  }

  double get Pt{

    return size_fit.setPt(this);

  }


}