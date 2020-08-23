import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InvestScreen extends StatefulWidget {
  @override
  _InvestScreenState createState() => _InvestScreenState();
}

class _InvestScreenState extends State<InvestScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChooseInvest();
  }
}

class ChooseInvest extends StatefulWidget {
  // ELE PEGA A LOCALIZACAO E VE TUDO O QUE ESTA AO REDOR NUM RAIO DE 500M
  @override
  _ChooseInvestState createState() => _ChooseInvestState();
}

class _ChooseInvestState extends State<ChooseInvest> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30),
        child: ListView.separated(itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  boxShadow: <BoxShadow>[
                    BoxShadow(spreadRadius: 2, blurRadius: 10.0, offset: Offset(1.0, 6.0), color: Colors.grey)
                  ]
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.print, size: 70,),
                            alignment: Alignment.center,
                            height: 100,
                            width: 120,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(height: 20,),
                              Container(
                                width: 200,
                                child: Text("Nome da Empresa", style: TextStyle(color: Colors.black, fontSize: 20, )),
                              ),
                              Container(
                                width: 200,
                                child: Text("Lorem Ipsum is simply dummy text of the printing and "
                                    "typesetting industry. Lorem Ipsum has been the industry's "
                                    "standard dummy text ever since the 1500s, when an unknown "
                                    "printer took a galley of type and scrambled it to make a "
                                    "type specimen book. ", //256 chars
                                    style: TextStyle(color: Colors.black, fontSize: 13, )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(icon: Icon(Icons.attach_money, color: Colors.black,), onPressed: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return InvestValue();
                          }))
                        }),
                        Container(height: 30,),
                        IconButton(icon: Icon(Icons.info_outline, color: Colors.black,), onPressed: null),
                      ],
                    )
                  ],
                ),
              ),
              Container(height: 10,)
            ],
          );
        }, padding: EdgeInsets.only(bottom: 10, top: 10),
          itemCount: 10,
          separatorBuilder: (context, index) => Divider(),
        )
      );
  }
}

class InvestValue extends StatefulWidget {
  @override
  _InvestValueState createState() => _InvestValueState();
}

class _InvestValueState extends State<InvestValue> {
  final myController = TextEditingController();
  @override
  void initState() {
    myController.text = '0,00';
    super.initState();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Future<void> donationMade(BuildContext context) async {
    BuildContext otherContext = context;
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('PARABÉNS!!!'),
          content: Text('Você acabou de investir R\$${myController.text} na empresa X!\nDeseja doar novamente?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Doar novamente'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(otherContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> actionDenied(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ação não permitida'),
          content: Text('Coloque um valor maior que 0'),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            children: [
              IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);}, padding: EdgeInsets.only(left: 20, top: 40),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Coloque um valor", style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("R\$", style: TextStyle(fontSize: 40),),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        child: TextFormField(
                          controller: myController,
                          style: TextStyle(fontSize: 40,),
                          keyboardType: TextInputType.numberWithOptions(
                              decimal: true,
                              signed: false
                          ),
                          inputFormatters: <TextInputFormatter>[
                            //FilteringTextInputFormatter.allow(RegExp(r'^\d+\,?\d{0,2}')),
                           // FilteringTextInputFormatter.singleLineFormatter,
                          ], // Only numbers can be entered
                        ),
                      ),
                    ],
                  ),
                  FlatButton(onPressed: () {
                    print(double.tryParse(myController.text.replaceFirst(",", ".")));
                    if (double.tryParse(myController.text.replaceFirst(",", ".")) > 0) {
                      donationMade(context);
                    } else {
                      actionDenied(context);
                    }
                  }, child: Icon(Icons.send))
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}