import '../../../core/utils/responsive.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../common/section_title.dart';
import '../../../core/constants/assets_constants.dart';
import '../../../theme/app_colors.dart';
import '../widgets/service_item.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          const SectionHeading(
            title: 'This is what I do.',
          ),
          const SizedBox(height: 16),
          ResponsiveLayout.isLargeScreen(context)
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServiceItem(
                      title: 'Criminal Defense',
                      description:
                          'Protecting your rights in all criminal matters, from minor offenses to serious charges.',
                      serviceImage: criminalDefenseImageOPath,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ServiceItem(
                      title: 'Bail & Anticipatory Bail',
                      description:
                          "Expert assistance to secure your release and safeguard your freedom quickly.",
                      serviceImage: bailAnticipatoryImageOPath,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ServiceItem(
                      title: 'High Court Representation',
                      description:
                          "Skilled advocacy and strategic arguments before the High Court and other appellate courts.",
                      serviceImage: highCourtServiceImageOPath,
                    ),
                  ],
                )
              : const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ServiceItem(
                      title: 'Criminal Defense',
                      description:
                          'Protecting your rights in all criminal matters, from minor offenses to serious charges.',
                      serviceImage: criminalDefenseImageOPath,
                    ),
                    ServiceItem(
                      title: 'Bail & Anticipatory Bail',
                      description:
                          "Expert assistance to secure your release and safeguard your freedom quickly.",
                      serviceImage: bailAnticipatoryImageOPath,
                    ),
                    ServiceItem(
                      title: 'High Court Representation',
                      description:
                          "Skilled advocacy and strategic arguments before the High Court and other appellate courts.",
                      serviceImage: highCourtServiceImageOPath,
                    ),
                  ],
                ),
          const SizedBox(height: 16),
          ResponsiveLayout.isLargeScreen(context)
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServiceItem(
                      title: 'Trial Court Advocacy',
                      description:
                          'Effective defense and case handling at every stage of trial proceedings.',
                      serviceImage: trialCourtServiceImageOPath,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ServiceItem(
                      title: 'Evidence & Case Review',
                      description:
                          "Thorough examination of evidence to build the strongest possible defense.",
                      serviceImage: evidenceCaseReviewServiceImageOPath,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ServiceItem(
                      title: 'Legal Consultation',
                      description:
                          "Clear, honest, and practical advice to guide you through legal challenges.",
                      serviceImage: legalConsultationServiceImageOPath,
                    ),
                  ],
                )
              : const Column(
                  children: [
                    ServiceItem(
                      title: 'Trial Court Advocacy',
                      description:
                          "Effective defense and case handling at every stage of trial proceedings.",
                      serviceImage: trialCourtServiceImageOPath,
                    ),
                    ServiceItem(
                      title: 'Evidence & Case Review',
                      description:
                          'Thorough examination of evidence to build the strongest possible defense.',
                      serviceImage: evidenceCaseReviewServiceImageOPath,
                    ),
                    ServiceItem(
                      title: 'Legal Consultation',
                      description:
                          'Clear, honest, and practical advice to guide you through legal challenges.',
                      serviceImage: legalConsultationServiceImageOPath,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
