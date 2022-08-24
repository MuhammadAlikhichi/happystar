import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:untitled/models/coronamodels.dart';
import 'package:untitled/services/coronaupdate_services.dart';

class CoronaUpdateScreen extends StatefulWidget {
  const CoronaUpdateScreen({Key? key}) : super(key: key);

  @override
  State<CoronaUpdateScreen> createState() => _CoronaUpdateScreenState();
}

class _CoronaUpdateScreenState extends State<CoronaUpdateScreen> {
  List<Coronaupdate>? _coronaupdate;
  getcoronadata() async {
    _coronaupdate = await CoronaupdateServices().getCoronaUpdate();
  }

  @override
  void didChangeDependencies() async {
    await getcoronadata();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Center(child: Text('${_coronaupdate?[0].provinceState}'))],
      ),
    );
  }
}
