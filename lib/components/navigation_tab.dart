import 'package:flutter/material.dart';

class NavigationTab extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  const NavigationTab(
      {Key? key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      indicator: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.green, width: 2))),
      tabs: icones
          .asMap()
          .map((indice, item) {
            return MapEntry(
                indice,
                Tab(
                  icon: Icon(
                    item,
                    color: indiceAbaSelecionada == indice
                        ? Colors.green
                        : Colors.black54,
                    size: 25,
                  ),
                ));
          })
          .values
          .toList(),
    );
  }
}
