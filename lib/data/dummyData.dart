import 'package:pet_adaption_app/models/grooming.dart';
import 'package:pet_adaption_app/models/veterinary.dart';

const dummyGroomingData = [
  Grooming(groomingName: 'Spa Bath', price: 960, totalServices: 7, services: [
    "Bathing",
    "Haircut",
    "Nail trimming",
    "Ear cleaning",
    "Brushing",
    "Teeth cleaning",
    "Flea and tick treatment"
  ]),
  Grooming(
      groomingName: 'Bath + Basic Grooming',
      price: 1438,
      totalServices: 10,
      services: [
        "Shampoo",
        "Clippers",
        "Slicker brush",
        "Nail clippers",
        "Ear cleaner",
        "Grooming scissors",
        "Toothbrush and toothpaste",
        "Flea comb",
        "Grooming table",
        "Hair dryer"
      ]),
  Grooming(
      groomingName: 'Full Service',
      price: 1798,
      totalServices: 12,
      services: [
        "Shampoo",
        "Clippers",
        "Slicker brush",
        "Nail clippers",
        "Ear cleaner",
        "Basic bath and brush",
        "Full grooming package",
        "Puppy grooming package",
        "Senior dog grooming package",
        "Breed-specific grooming",
        "Spa and relaxation package",
        "Quick touch-up service"
      ]),
];

const dummyVetData = [
  Veterinary(
    vetName: "Telemedicine Consultations",
    price: 450,
    description: [
      "Chat Consults",
      "Personalized Advice",
      "Follow-up Appointments (2 months)",
    ],
  ),
  Veterinary(
    vetName: "Behavioral Training and Support",
    price: 280,
    description: [
      "Training Videos and Guides",
      "Live Q&A Sessions",
      "Progress Tracking Tools",
      "Community Support Forum"
    ],
  ),
  Veterinary(
    vetName: "Nutrition and Diet Planning",
    price: 580,
    description: [
      "Dietary Consultations (Nutritionist)",
      "Meal Planning Tools",
      "Nutritional Supplements Recommendation",
      "Recipe Database",
      "Regular Diet Assessments"
    ],
  ),
  Veterinary(
    vetName: "Remote Monitoring and Health Tracking",
    price: 600,
    description: [
      "Vital Signs Monitoring",
      "Health Report Analysis",
      "Medication Reminders",
      "Health Journal Logging",
      "Emergency Alert System"
    ],
  ),
  Veterinary(
    vetName: "Preventive Care and Vaccination Plans",
    price: 340,
    description: [
      "Vaccination Schedules",
      "Parasite Control Plans",
      "Health Check-Up Packages",
      "Educational Webinars/Workshops",
      "Dental Care Guidance"
    ],
  ),
];
