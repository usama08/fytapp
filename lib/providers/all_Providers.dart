 import 'package:bayfit/providers/accSetup_Provider.dart'; 
import 'package:provider/provider.dart';

var allProvider = [
  ChangeNotifierProvider<AccSetupProvider>(
    create: (_) => AccSetupProvider(),
    lazy: true,
  ),
];