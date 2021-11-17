//
//  PlanetsModel.swift
//  Planets
//
//  Created by Andrew Kealy on 17/11/2021.
//

import Foundation

struct PlanetsModel {
    

    var index = 0
    var nextIsAvailable: Bool = true
    var previousIsAvailable: Bool = false

    var models = [
      Model(id: 0, name: "Mercury", modelName: "Mercury.usdz", details: "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes (Ἑρμῆς). "),
      
      Model(id: 1, name: "Venus", modelName: "Venus.usdz", details: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earth's night sky after the Moon, Venus can cast shadows and can be, on rare occasions, visible to the naked eye in broad daylight. Venus lies within Earth's orbit, and so never appears to venture far from the Sun, either setting in the west just after dusk or rising in the east a little while before dawn."),
      
      Model(id: 2, name: "Earth", modelName: "Earth.usdz", details: "Earth is the third planet from the Sun and the only astronomical object known to harbour and support life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago.  Three-quarters of the atmosphere's mass is contained within the first 11 km (6.8 mi) of the surface. This lowest layer is "),
      
      Model(id: 3, name: "Moon", modelName: "Moon.usdz", details: "The Moon is Earth's only natural satellite. At about one-quarter the diameter of Earth (comparable to the width of Australia), it is the largest natural satellite in the Solar System relative to the size of its planet, the fifth largest satellite in the Solar System overall, and is larger than any known dwarf planet." ),
      
      Model(id: 4, name: "Mars", modelName: "Mars.usdz", details: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the Red Planet. The latter refers to the effect of the iron oxide prevalent on Mars's surface, which gives it a reddish appearance (as shown), that is distinctive among the astronomical bodies visible to the naked eye."),
      
      Model(id: 5, name: "Jupiter", modelName: "Jupiter.usdz", details: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun. Jupiter is the third-brightest natural object in the Earth's night sky after the Moon and Venus. It has been observed since pre-historic times and is named after the Roman god Jupiter, the king of the gods, because of its observed size."),
      
      Model(id: 6, name: "Saturn", modelName: "Saturn.usdz", details: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive."),
      
      Model(id: 7, name: "Uranus", modelName: "Uranus.usdz", details: "Uranus is the seventh planet from the Sun. Its name is a reference to the Greek god of the sky, Uranus, who, according to Greek mythology, was the great-grandfather of Ares (Mars), grandfather of Zeus (Jupiter) and father of Cronus (Saturn). It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn."),
      
      Model(id: 8, name: "Neptune", modelName: "Neptune.usdz", details: "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere."),
      
      Model(id: 9, name: "Pluto", modelName: "Pluto.usdz", details: "Pluto (is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered. After Pluto was discovered in 1930, it was declared to be the ninth planet from the Sun. Beginning in the 1990s, its status as a planet was questioned following the discovery of several objects of similar size in the Kuiper belt and the scattered disc, including the dwarf planet Eris. This led the International Astronomical Union (IAU) in 2006 to formally define the term planet — excluding Pluto and reclassifying it as a dwarf planet.")
    ]
    
    var currentModel: Model = Model(id: 0, name: "Mercury", modelName: "Mercury.usdz", details: "Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Sun's planets. It is named after the Roman god Mercurius (Mercury), god of commerce, messenger of the gods, and mediator between gods and mortals, corresponding to the Greek god Hermes (Ἑρμῆς). ")
    
    mutating func getNextModel() -> Model {
        if nextIsAvailable {
            index += 1
        }
        if (index == models.count - 1) {
            nextIsAvailable = false
        }
        if (!previousIsAvailable) {
            previousIsAvailable.toggle()
        }
        return models[index]
    }
    
    mutating func getPreviousModel() -> Model {
        if previousIsAvailable {
            index -= 1
        }
        if(index == 0) {
            previousIsAvailable = false
        }
        if(!nextIsAvailable) {
            nextIsAvailable.toggle()
        }
        return models[index]
    }
    
}

struct Model: Identifiable {
    
    var id: Int
    var name: String
    var modelName: String
    var details: String
}
