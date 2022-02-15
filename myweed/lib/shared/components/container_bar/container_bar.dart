import 'package:flutter/material.dart';
import 'package:myweed/shared/theme/colors.dart';

//Este é o corpo do AppBar, onde tem o avatar e etc..
class ContainerBar extends StatelessWidget {
  const ContainerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.png"),
            ),
            title: Text.rich(
              TextSpan(
                text: "Olá,",
                children: [
                  TextSpan(
                    text: " Person",
                    style: TextStyle(
                      color: AppColors.secundary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              "Aproveite nossos serviços!",
              style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
            trailing: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/marijuana.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 18,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.secundary,
                      ),
                      child: Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
