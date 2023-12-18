import 'package:pet_adaption_app/models/adoptable-pet.dart';
import 'package:pet_adaption_app/models/grooming.dart';
import 'package:pet_adaption_app/models/story.dart';
import 'package:pet_adaption_app/models/veterinary.dart';

// Grooming cards data
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

// Vet data
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

// Stories data
final dummyStoriesData = [
  Story(
    userId: '1',
    imageLink:
        "https://images.unsplash.com/photo-1568572933382-74d440642117?q=80&w=1635&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
  Story(
    userId: '2',
    imageLink:
        "https://images.unsplash.com/photo-1598133894008-61f7fdb8cc3a?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
  Story(
    userId: '3',
    imageLink:
        "https://images.unsplash.com/photo-1573865526739-10659fec78a5?q=80&w=1615&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
  Story(
    userId: '4',
    imageLink:
        "https://images.unsplash.com/photo-1530281700549-e82e7bf110d6?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
  Story(
    userId: '5',
    imageLink:
        "https://images.unsplash.com/photo-1495360010541-f48722b34f7d?q=80&w=1636&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
  Story(
    userId: '6',
    imageLink:
        "https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?q=80&w=1664&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
  Story(
    userId: '7',
    imageLink:
        "https://images.unsplash.com/photo-1586671267731-da2cf3ceeb80?q=80&w=1589&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    uploadedTime: DateTime.now(),
  ),
];

// Adoptable pets data
final dummyAdoptablePetsData = [
  AdoptablePet(
    species: Species.dog,
    images: [
      "https://images.unsplash.com/photo-1598133894008-61f7fdb8cc3a?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Fluffy',
    age: 2,
    gender: Gender.male,
    color: 'Black',
    description:
        "Fluffy is a very cute little dog. She is very friendly and loves playing with other dogs. She is a good companion for families who have multiple dogs.",
  ),
  AdoptablePet(
    species: Species.dog,
    images: [
      "https://images.unsplash.com/photo-1517849845537-4d257902454a?q=80&w=1635&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Max',
    age: 1,
    gender: Gender.male,
    color: 'White',
    description:
        "Max is a very friendly and loving dog. She is very friendly and loves playing with other dogs. She is a good companion for families who have multiple dogs.",
  ),
  AdoptablePet(
    species: Species.dog,
    images: [
      "https://images.unsplash.com/photo-1552053831-71594a27632d?q=80&w=1562&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Charlie',
    age: 3,
    gender: Gender.male,
    color: 'Black',
    description:
        "Charlie is a very friendly and loving dog. She is very friendly and loves playing with other dogs. She is a good companion for families who have multiple dogs.",
  ),
  AdoptablePet(
    species: Species.dog,
    images: [
      "https://images.unsplash.com/photo-1537151625747-768eb6cf92b2?q=80&w=1585&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Bella',
    age: 2.2,
    gender: Gender.female,
    color: 'White',
    description:
        "Bella is a very friendly and loving dog. She is very friendly and loves playing with other dogs. She is a good companion for families who have multiple dogs.",
  ),
  AdoptablePet(
    species: Species.dog,
    images: [
      "https://images.unsplash.com/photo-1588943211346-0908a1fb0b01?q=80&w=1635&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Luna',
    age: 1.5,
    gender: Gender.female,
    color: 'Black',
    description:
        "Luna is a very friendly and loving dog. She is very friendly and loves playing with other dogs. She is a good companion for families who have multiple dogs.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1618826411640-d6df44dd3f7a?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1595752776689-aebef37b5d32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D",
      "https://images.unsplash.com/photo-1558201496-a35f22e7fb5c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8",
    ],
    name: 'Whiskers',
    age: 3,
    gender: Gender.female,
    color: 'Tabby',
    description:
        "Whiskers is an affectionate and playful cat. She loves cuddles and enjoys playing with toys. She will make a great companion for a loving family. Whiskers is an affectionate and playful cat. She loves cuddles and enjoys playing with toys. She will make a great companion for a loving family. Whiskers is an affectionate and playful cat. She loves cuddles and enjoys playing with toys. She will make a great companion for a loving family. Whiskers is an affectionate and playful cat. She loves cuddles and enjoys playing with toys. She will make a great companion for a loving family.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Mittens',
    age: 2,
    gender: Gender.male,
    color: 'Black and White',
    description:
        "Mittens is an energetic and friendly cat. He enjoys exploring new spaces and loves interactive play. He would be a perfect addition to an active household.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1548546738-8509cb246ed3?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ],
    name: 'Socks',
    age: 4,
    gender: Gender.female,
    color: 'Calico',
    description:
        "Socks is a sweet and gentle cat. She adores sunbathing and loves being around people. She would bring joy to any home with her calm demeanor.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1529778873920-4da4926a72c2?q=80&w=1636&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ],
    name: 'Oreo',
    age: 1,
    gender: Gender.male,
    color: 'Tuxedo',
    description:
        "Oreo is an outgoing and curious cat. He enjoys playing with feather toys and loves chasing after balls. He's looking for a playful family to call his own.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1561948955-570b270e7c36?q=80&w=1501&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ],
    name: 'Shadow',
    age: 5,
    gender: Gender.female,
    color: 'Black',
    description:
        "Shadow is a loyal and affectionate cat. She enjoys cuddling and will follow her humans around the house. She's looking for a loving forever home.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1533738363-b7f9aef128ce?q=80&w=1635&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ],
    name: 'Ginger',
    age: 2,
    gender: Gender.male,
    color: 'Orange Tabby',
    description:
        "Ginger is a playful and friendly cat. He enjoys playing with catnip toys and lounging in cozy spots. He's ready to bring happiness to a new family.",
  ),
  AdoptablePet(
    species: Species.cat,
    images: [
      "https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ],
    name: 'Muffin',
    age: 3,
    gender: Gender.female,
    color: 'Siamese',
    description:
        "Muffin is an intelligent and vocal cat. She loves interactive toys and enjoys chatting with her humans. She's seeking a loving home full of play and attention.",
  ),
];
