import 'package:energytoday/pages/detail_page.dart';
import 'package:flutter/material.dart';

enum Production { staged, realLife }

class PageForm extends StatefulWidget {
  const PageForm({super.key});

  @override
  State<PageForm> createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  // var _motivations;

  final _motiveController = TextEditingController();
  final _detailController = TextEditingController();
  bool? _checked = false;

  Production? _productionEnum;

  @override
  void dispose() {
    _motiveController.dispose();
    _detailController.dispose();

    super.dispose();
  }
  // @override
  // void initState() {
  //   super.initState();
  //   _motiveController.addListener(_textUpdate);
  // }

  // void _textUpdate() {
  //   setState(() {
  //     _motivations = _motiveController.text;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: _motiveController,
              decoration: InputDecoration(
                focusColor: Colors.amberAccent,
                prefixIcon: Icon(Icons.monetization_on_rounded),
                labelText: "Enter Details",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.redAccent,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.amberAccent,
                    ),
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: _detailController,
              decoration: InputDecoration(
                focusColor: Colors.amberAccent,
                prefixIcon:  const Icon(Icons.local_laundry_service),
                labelText: "Enter Details",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.redAccent,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.amberAccent,
                    ),
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text('You have entered $_motivations'),
          // ),
          CheckboxListTile(
            title: Text('Priority'),
            checkColor: Colors.amberAccent,
            activeColor: Colors.black,
            value: _checked,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (val) {
              setState(
                () {
                  _checked = val;
                },
              );
            },
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RadioListTile<Production>(
                  contentPadding: const EdgeInsets.all(0.0),
                  title: const Text('Real'),
                  value: Production.realLife,
                  groupValue: _productionEnum,
                  onChanged: (val) {
                    setState(
                      () {
                        _productionEnum = val;
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: RadioListTile<Production>(
                  contentPadding: const EdgeInsets.all(0.0),
                  title: const Text('Staged'),
                  value: Production.staged,
                  groupValue: _productionEnum,
                  onChanged: (val) {
                    setState(
                      () {
                        _productionEnum = val;
                      },
                    );
                  },
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      motivation: _motiveController.text,
                      detail: _detailController.text,
                    ),
                  ),
                );
              },
              child: Icon(Icons.accessibility),
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.all(20.0),
                backgroundColor: Color.fromARGB(255, 19, 2, 77),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
