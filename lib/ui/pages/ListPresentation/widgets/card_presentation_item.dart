import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

import '../../../../echarts_data.dart';

/// clase card item que estructura la presentacion creada desde build
class CardPresentationItem extends StatelessWidget {
  final String text;
  final String imageURL;
  final String subtitle;

  const CardPresentationItem(this.text, this.imageURL, this.subtitle,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15, right: 25),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 20,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(0.5)),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 220,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
              ),
              child: Chart(
                data: areaStackGradientData,
                variables: {
                  'day': Variable(
                    accessor: (Map datum) => datum['day'] as String,
                    scale: OrdinalScale(inflate: false),
                  ),
                  'value': Variable(
                    accessor: (Map datum) => datum['value'] as num,
                    scale: LinearScale(min: 0, max: 400),
                  ),
                  'group': Variable(
                    accessor: (Map datum) => datum['group'].toString(),
                  ),
                },
                elements: [
                  LineElement(
                    shape: ShapeAttr(value: BasicLineShape(smooth: true)),
                    gradient: GradientAttr(
                      variable: 'group',
                      values: [
                        const LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            Color.fromARGB(204, 128, 255, 165),
                            Color.fromARGB(204, 1, 191, 236),
                          ],
                        ),
                        const LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            Color.fromARGB(204, 0, 221, 255),
                            Color.fromARGB(204, 77, 119, 255),
                          ],
                        ),
                        const LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            Color.fromARGB(204, 55, 162, 255),
                            Color.fromARGB(204, 116, 21, 219),
                          ],
                        ),
                        const LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            Color.fromARGB(204, 255, 0, 135),
                            Color.fromARGB(204, 135, 0, 157),
                          ],
                        ),
                        const LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            Color.fromARGB(204, 255, 191, 0),
                            Color.fromARGB(204, 224, 62, 76),
                          ],
                        ),
                        const LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            Color.fromARGB(204, 128, 255, 165),
                            Color.fromARGB(204, 1, 191, 236),
                          ],
                        ),
                      ],
                    ),
                    modifiers: [StackModifier()],
                  ),
                ],
                axes: [
                  Defaults.horizontalAxis,
                  Defaults.verticalAxis,
                ],
              ),
            ),
            Material(
              child:  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                IconButton(
                        onPressed: () => print("more"),
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.grey),
                        ),
                IconButton(
                      onPressed: () => print("share"),
                      icon: const Icon(
                        Icons.share,
                        color: Colors.orangeAccent,
                        )),
                IconButton(
                      onPressed: () => print("download"),
                      icon: const Icon(
                        Icons.download),
                        color: Colors.blueAccent,
                      ),
                                      IconButton(
                      onPressed: () => print("delete"),
                      icon: const Icon(
                        Icons.delete),
                        color: Colors.redAccent),
              ]),
              ),
          ],
        ),
      ),
    );
  }
}
