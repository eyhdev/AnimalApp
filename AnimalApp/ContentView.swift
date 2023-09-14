//
//  ContentView.swift
//  AnimalApp
//
//  Created by eyh.mac on 14.09.2023.
//

import SwiftUI

struct HistoricalArtifact: Identifiable {
var id = UUID()
var name: String
var imageName: String
var description: String
var imageDetail: String
}

struct ContentView: View {

let sampleArtifacts: [HistoricalArtifact] = [
HistoricalArtifact(name: "Leopard", imageName: "img3",description: "Leopards are fascinating and majestic big cats that belong to the Panthera genus. They are known for their striking appearance, incredible adaptability, and elusive behavior. Here's a detailed overview of leopards in English:Physical Characteristics:Leopards are renowned for their distinctive appearance, which varies slightly among subspecies. However, some common physical traits include a sleek and muscular body, a large head with powerful jaws, and a short, rounded face. Their fur is covered in a golden-yellow background color, adorned with rosettes—dark, circular spots with a brown center—arranged in a scattered pattern across their body. Leopards exhibit melanism, a genetic condition that can turn their fur completely black, resulting in what are commonly known as black panthers.Habitat and Range:Leopards are incredibly adaptable and can be found across a wide range of habitats, from dense forests and grasslands to arid deserts and mountainous regions. They are the most geographically widespread of all big cats, with a range that extends throughout Africa and into parts of Asia, including India, Sri Lanka, Southeast Asia, and China.Behavior:Leopards are solitary animals and are known for their stealth and cunning hunting techniques. They are primarily nocturnal, although they can be active during the day. Leopards are excellent climbers and are often spotted resting in trees, where they stash their kills to keep them away from scavengers. Their keen senses, strength, and agility make them formidable predators.", imageDetail: "image3"),


HistoricalArtifact(name: "Giraffe", imageName: "img2",description: "Giraffes are truly remarkable creatures known for their distinctive appearance and unique adaptations. Here's an in-depth overview of giraffes in English:Physical Characteristics:Giraffes are easily recognizable due to their long necks and legs. They are the tallest land animals on Earth, with adult males standing up to 18 feet (5.5 meters) tall and females slightly shorter. Their bodies are covered in a tan or orange background coat with irregular patches of brown or dark spots. These spots are unique to each individual giraffe, similar to human fingerprints.Giraffes are native to the African continent and can be found in a variety of habitats, including savannas, grasslands, woodlands, and open plains. They are most commonly associated with East Africa but are also found in southern and central Africa.Giraffes are generally peaceful and social animals, often seen in small groups known as towers Their long legs and necks allow them to reach vegetation high in trees that many other herbivores cannot access. They are primarily browsers, feeding on leaves, flowers, and fruits from acacia and other tree species. Giraffes spend a significant portion of their day eating, as they require a large amount of food to sustain their massive bodies.Reproduction:Female giraffes give birth to a single calf after a gestation period of around 15 months. Calves are born while standing, and they can stand and walk within hours of birth. Mothers are protective of their calves, and the young giraffes often form nursery groups for safety.", imageDetail: "image2"),
                   
HistoricalArtifact(name: "Penguins", imageName: "img4",description: "Penguins are a group of flightless birds that are known for their distinctive appearance and their strong association with cold, southern regions. They are highly adapted to life in the water and are excellent swimmers. Here are some key facts about penguins:Physical Characteristics: Penguins are known for their black and white coloration, which helps them blend into their surroundings while swimming.They have flipper-like wings that serve as flippers for swimming and are not suitable for flying.Penguins have webbed feet, which make them agile and efficient swimmers.Their bodies are streamlined, helping them glide through the water with ease. Habitat:Penguins are primarily found in the Southern Hemisphere, with the majority living in and around Antarctica.Some penguin species also inhabit more temperate regions, such as the Galápagos Islands and southern parts of South America and Africa.Penguins are social birds and often live in large colonies for protection and warmth.They are excellent hunters and primarily feed on fish, squid, and krill.Penguins are known for their distinctive waddling walk on land and their tobogganing slide on their bellies over the ice and snow.Penguins typically lay one to two eggs, depending on the species.Both parents take turns incubating the eggs and caring for the chicks.Emperor penguins are known for their remarkable parenting, where males incubate the eggs on their feet, keeping them warm in the harsh Antarctic winters.Some penguin species are threatened or endangered due to habitat destruction, pollution, and climate change.", imageDetail: "image4"),


HistoricalArtifact(name: "Zebra", imageName: "img1",description: "Zebras are iconic African animals known for their striking black and white stripes. They are members of the horse family, Equidae, and share a common ancestor with horses and donkeys. Zebras are fascinating creatures with unique characteristics and behaviors. Here's a comprehensive overview of zebras in English:Zebras are easily distinguishable by their bold black and white stripes, which vary in pattern and intensity among the different zebra species. There are three primary zebra species: the Plains zebra (Equus quagga), the Grevy's zebra (Equus grevyi), and the Mountain zebra (Equus zebra). Zebras have a horse-like body with a short, upright mane and a tufted tail.Zebras are native to various parts of Africa, inhabiting a range of ecosystems, including grasslands, savannas, woodlands, and sometimes mountainous regions. Each species has its own distribution within Africa. For example, Plains zebras are widespread in eastern and southern Africa.Zebras are social animals and are often found in groups called dazzles or harems. These groups provide protection against predators as zebras can collectively watch for threats. Their strong herding behavior helps them survive in the wild. Zebras are primarily grazers, feeding on grasses and other vegetation.Stripes and Camouflage:The distinctive black and white stripes of zebras have long intrigued scientists. While the exact purpose of these stripes is not fully understood, several theories exist.", imageDetail: "image1"),
]

var body: some View {
NavigationView{
    ZStack{
        Color("AccentColor")
            .edgesIgnoringSafeArea(.all)
        ScrollView{
            VStack(spacing: 20){
                HStack{
                    Image(systemName: "magnifyingglass")
                        .frame(width: 40, height: 40)
                    Spacer()
                    Text("Animal")
                        .font(.title)
                        .fontWeight(.medium)
                    Spacer()
                    
                    Image(systemName: "text.alignright")
                        .frame(width: 40, height: 40)
                }
                .padding(.top, 40)
                .padding()
                .background(Color.white)
                .frame(width: 430, height: 155)
                .padding(.top, -80)
                
                Text("more")
                    .font(.title2)
                    .padding(.trailing, 300)
                    .padding()
                
                ForEach(sampleArtifacts) { artifact in
                    NavigationLink(destination: ArtifactDetailView(artifact: artifact)) {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 330, height: 245.47694)
                                .background(
                                    Image(artifact.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 330, height: 155)
                                        .padding(.leading, 90)
                                        .padding(.top, 0)
                                )
                            
                            VStack{
                                Text("Animal")
                                    .font(Font.custom("Iner", size: 15).weight(.light))
                                    .foregroundColor(.black)
                                
                                Text(artifact.name)
                                    .font(Font.custom("Iner", size: 32).weight(.light))
                                    .foregroundColor(.black)
                                    .padding()
                                
                                Image(systemName: "chevron.right.circle.fill")
                                    .font(.system(size: 43))
                                    .foregroundColor(.black)
                                
                            }
                            .padding(.trailing, 180)
                        }
                        .frame(width: 393, height: 219)
                        .background(Color.white)
                        .cornerRadius(28)
                    }
                }
            }
        }
    }
}
}


struct ArtifactDetailView: View{

var artifact: HistoricalArtifact
@Environment(\.presentationMode) var presentationMode

var body: some View{
    ScrollView{
        VStack{
            Image(artifact.imageDetail)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 490, height: 490)
                .clipped()
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 512, height: 512)
                    .background(Color.white)
                    .blur(radius: 50)
                    .offset(y: -520)
                
                Text(artifact.name)
                    .font(Font.custom("Bebas neue", size: 60))
                    .foregroundColor(.black)
                    .frame(width: 368, alignment: .topLeading)
                    .offset(y: -679)
                
                Text(artifact.description)
                    .font(Font.custom("Iowan Old Style", size: 20))
                    .foregroundColor(.black)
                    .frame(width: 368, alignment: .topLeading)
                    .offset(y: -70)
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea(.container, edges: .top)
    }
}
}
}

struct ContentView_Previews: PreviewProvider {
static var previews: some View {
ContentView()
}
}
