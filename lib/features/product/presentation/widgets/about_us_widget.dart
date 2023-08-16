
import 'package:e_shop/common/constants/app_text_styles.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:e_shop/config/size_config.dart';
import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    super.key,
    required this.isLoading,
    required SizeConfig sizeConfig,
  }) : _sizeConfig = sizeConfig;

  final bool isLoading;
  final SizeConfig _sizeConfig;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'О нас',
            style: AppTextStyles.subtitleStyle,
          ),
          const SizedBox(height: 3),
          ShimmerLoading(
            isLoading: isLoading,
            child: SizedBox(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 335 / 180,
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.excaliberpc.com/images/resources/742728/1a16680742cc447ba4383b9044bfd8ac.png'),
                      fit: BoxFit.cover,
                      opacity: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: _sizeConfig.getWidth(30),
                      left: _sizeConfig.getWidth(22),
                      right: _sizeConfig.getWidth(170),
                      bottom: _sizeConfig.getWidth(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Кто мы такие?',
                          style: TextStyle(
                            fontSize: _sizeConfig.getFontSize(16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...  ',
                          style: TextStyle(
                              fontSize: _sizeConfig.getFontSize(12)),
                          maxLines: 3,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        GestureDetector(
                          onTap: () => print(123),
                          child: Text(
                            'Узнать больше',
                            style: TextStyle(
                              fontSize: _sizeConfig.getFontSize(14),
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
