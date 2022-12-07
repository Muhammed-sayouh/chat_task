
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../view_model/home_view_model.dart';



List<SingleChildWidget> providers = [
 
  ChangeNotifierProvider(
    create: (context) => HomeViewModel(),
  )
];
