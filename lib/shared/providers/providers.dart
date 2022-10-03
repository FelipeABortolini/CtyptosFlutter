import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/history_interval_controller.dart';

final historyIntervalProvider = ChangeNotifierProvider((ref) => HistoryIntervalController());

final visibleProvider = StateProvider((ref) => true);