import 'package:flutter/material.dart';
import 'dart:math';

// The main function is the entry point for all Flutter apps.
void main() {
  runApp(const MyApp());
}

// MyApp is the root widget of your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hides the debug banner in the top-right corner.
      debugShowCheckedModeBanner: false,
      title: 'Dice Roller',
      // Sets the Dicescreen widget as the home screen of the app.
      home: const Dicescreen(),
    );
  }
}


class Dicescreen extends StatefulWidget {
  const Dicescreen({super.key});

  @override
  State<Dicescreen> createState() => _DicescreenState();
}

class _DicescreenState extends State<Dicescreen> {
  // State variables to hold the current value of the dice.
  int diceOneValue = 1;
  int diceTwoValue = 4;

  // The list of data to be displayed in the horizontal list.
  List<Map<dynamic, dynamic>> swiggyData = [
    {
        "id": "1256901",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Pothichoru.png",
        "action": {
            "link": "https://www.swiggy.com/collections/94967?collection_id=94967&tags=layout_BAU_Contextual%2Cappam%2Clayout_ux4&type=rcv2",
            "text": "Pothichoru",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for pothichoru",
            "altTextCta": "open"
        },
        "entityId": "94967",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750591",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Biryani.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83639?collection_id=83639&search_context=biryani&tags=layout_CCS_Biryani&type=rcv2",
            "text": "Biryani",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for biryani",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83639&tags=layout_CCS_Biryani&search_context=biryani",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "745861",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Shake.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83673?collection_id=83673&tags=layout_CCS_Shakes&type=rcv2",
            "text": "Shake",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for shakes",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83673&tags=layout_CCS_Shakes",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750248",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_shawarma.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80402?collection_id=80402&tags=layout_Shawarma_Contextual&type=rcv2",
            "text": "Shawarma",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for shawarma",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=80402&tags=layout_Shawarma_Contextual",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "749868",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_cake.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83655?collection_id=83655&tags=layout_CCS_Cake&type=rcv2",
            "text": "Cakes",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for cake",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83655&tags=layout_CCS_Cake",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750579",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Pizzas.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83631?collection_id=83631&search_context=pizza&tags=layout_CCS_Pizza&type=rcv2",
            "text": "Pizzas",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for pizza",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83631&tags=layout_CCS_Pizza&search_context=pizza",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750589",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_burger.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83637?collection_id=83637&search_context=burger&tags=layout_CCS_Burger&type=rcv2",
            "text": "Burgers",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for burger",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83637&tags=layout_CCS_Burger&search_context=burger",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750204",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_Parotta.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80477?collection_id=80477&tags=layout_BAU_Contextual%2Cparotta&type=rcv2",
            "text": "Parotta",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for parotta",
            "altTextCta": "open"
        },
        "entityId": "80477",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750222",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/17/58760e8e-324f-479e-88fa-31800120ea38_Rolls1.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83669?collection_id=83669&tags=layout_CCS_Rolls&type=rcv2",
            "text": "Rolls",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for roll",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83669&tags=layout_CCS_Rolls",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750225",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2025/1/24/186ebf5c-d9ad-4d2b-a2b0-77795e19241f_Salad2.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80394?collection_id=80394&tags=layout_CCS_Salad&type=rcv2",
            "text": "Salad",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for salad",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=80394&tags=layout_CCS_Salad",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750586",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Gulab jamun.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80430?collection_id=80430&tags=layout_BAU_Contextual%2Cgulab_jamun&type=rcv2",
            "text": "Gulab Jamun",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for gulab jamun",
            "altTextCta": "open"
        },
        "entityId": "80430",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "749772",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Noodles.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80463?collection_id=80463&tags=layout_BAU_Contextual%2Cnoodles&type=rcv2",
            "text": "Noodles",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for noodles",
            "altTextCta": "open"
        },
        "entityId": "80463",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750131",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Dosa.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80424?collection_id=80424&tags=layout_CCS_Dosa&type=rcv2",
            "text": "Dosa",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for dosa",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=80424&tags=layout_CCS_Dosa",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750206",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/f1263395-5d4a-4775-95dc-80ab6f3bbd89_pasta.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80479?collection_id=80479&search_context=pasta&tags=layout_CCS_Pasta&type=rcv2",
            "text": "Pasta",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for pasta",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=80479&tags=layout_CCS_Pasta&search_context=pasta",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750587",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2025/1/24/897bc750-6b57-4e7d-9365-87c1ab2c6d7e_Chinese2.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83636?collection_id=83636&tags=layout_CCS_Chinese&type=rcv2",
            "text": "Chinese",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurant curated for chinese",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83636&tags=layout_CCS_Chinese",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750252",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/cb5669c8-d6f1-46ab-b24d-3da99b9fa32c_tea.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80406?collection_id=80406&tags=layout_CCS_Tea&type=rcv2",
            "text": "Tea",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for tea",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=80406&tags=layout_CCS_Tea",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "749984",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_coffee.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83659?collection_id=83659&tags=layout_CCS_Coffee&type=rcv2",
            "text": "Coffee",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for coffee",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83659&tags=layout_CCS_Coffee",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750581",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2025/1/24/05a939eb-fd4e-4308-b989-d1c54f4421b3_northindian1.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83633?collection_id=83633&search_context=northindian&tags=layout_CCS_NorthIndian&type=rcv2",
            "text": "North Indian",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for north indian",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83633&tags=layout_CCS_NorthIndian&search_context=northindian",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": false
    },
    {
        "id": "750596",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/8f508de7-e0ac-4ba8-b54d-def9db98959e_chocolate icecream.png",
        "action": {
            "link": "https://www.swiggy.com/collections/83640?collection_id=83640&tags=layout_CCS_IceCreams&type=rcv2",
            "text": "Ice Cream",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for icecream",
            "altTextCta": "open"
        },
        "entityId": "swiggy://collectionV2?collection_id=83640&tags=layout_CCS_IceCreams",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    },
    {
        "id": "750616",
        "imageId": "MERCHANDISING_BANNERS/IMAGES/MERCH/2024/7/2/6ef07bda-b707-48ea-9b14-2594071593d1_Idiyappam.png",
        "action": {
            "link": "https://www.swiggy.com/collections/80437?collection_id=80437&tags=layout_BAU_Contextual%2Cidiyappam&type=rcv2",
            "text": "Idiyappam",
            "type": "WEBLINK"
        },
        "entityType": "BANNER",
        "accessibility": {
            "altText": "restaurants curated for idiyappam",
            "altTextCta": "open"
        },
        "entityId": "80437",
        "frequencyCapping": {},
        "externalMarketing": {},
        "veg": true
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ((diceOneValue+diceTwoValue) % 2 == 0)? Colors.blueGrey : Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50), // Added padding from the top status bar
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    // Displays the image corresponding to the dice value.
                    child: Image.asset("images/$diceOneValue.png"),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("images/$diceTwoValue.png"),
                  ),
                ),
              ],
            ),
            RawMaterialButton(
              onPressed: () {
                // When pressed, generate new random numbers for the dice
                // and rebuild the widget to show the new state.
                setState(() {
                  diceOneValue = Random().nextInt(6) + 1;
                  diceTwoValue = Random().nextInt(6) + 1;
                });
              },
              fillColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text(
                "ROLL DICE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                )
              ),
            ),
            
            const SizedBox(height: 20),

            // Displays the sum of the two dice values.
            Text(
              "${diceOneValue + diceTwoValue}",
              style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 20),

            // This SizedBox contains the horizontal ListView.
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: swiggyData.length,
                itemBuilder: (context, index) {
                  // ---- THIS IS THE CORRECTED LOGIC ----
                  // It correctly accesses the text from each item in the swiggyData list.
                  final item = swiggyData[index];
                  final title = item['action']?['text'] ?? 'No Title';

                  // If for some reason a title doesn't exist, return an empty box.
                  if (title == 'No Title') {
                    return const SizedBox.shrink();
                  }

                  // Returns a styled container for each item in the list.
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: swiggyData[index]["veg"]?Colors.green:Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Column(
                            children: [
                              Image.network("https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/${swiggyData[index]["imageId"]}", height: 120, width: 100,),
                              Text(
                                title,
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ), 
    );
  }
}