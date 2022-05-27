# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creando espejillos"
place1 = Place.create(
  name: "Espejillos",
  description: "Espejillos es la puerta de entrada al Parque Nacional Amboró, el lugar es un balneario formado por cascadas y saltos de agua rodeado de una vegetación selvática. Un lugar ideal para disfrutar del agua y las caminatas en medio de la naturaleza. Espejillos es parte de una reserva natural que protege el ambiente con importante diversidad de flora y fauna.",
  recomendation: "Una de las principales recomendaciones es ir cuando el clima esta caluroso, ya que cuando el clima esta frio este lugar no puede ser muy agradable, ya que siempre hay mucho viento. Llevar siempre protector solar. Tambien tiene que llevar comida preparada ya que por alli es dificil encontrar un restaurante. Ir siempre en la mañana ya que el tiempo puede pasar muy rapido, de ida para espejillo. Tener cuidado al momento de entrar a nadar, ya que espejillo cuenta con muchas rocas las cuales son muy resbaladizas",
  other_recomendation: "Se recomienda tener cuidados con sus cosas, ya que nunca se sabe que podria pasar. No quedarse hasta en la noche en espejillos ya que a esa hora el lugar parece inhóspito. No ir cuando el clima esta lluvioso o llovio el dia anterior ya que la entrada es un camino de tierra lo cual correrian el riesgo de quedarse varados por medio camino.",
  how_to_get: "Espejillos se encuentra a 45 kilómetros de la ciudad de Santa Cruz de la Sierra. Para llegar se debe conducir por la vieja ruta a Cochabamba hasta el poblado de San José en el Municipio de Porongo, desde allí continuar por un camino bien señalizado hasta la Reserva Natural Municipal de Espejillos.",
  what_to_bring: "Protector Solar, Ropa seca para cambiarse luego de bañarse, Comida, Bebidas, Agua, Chinelas, zapatos (si van a explorar), ropa de baño.",
  city: "Santa Cruz de la Sierra",
  rating: 4
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653506118/development/espejillos1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653506120/development/espejillos2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653506123/development/espejillos3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place1.photos.attach(io: file, filename: "espejillos#{e_counter}.jpg")
end

puts "Creando Río Madre de Dios"

place2 = Place.create(
  name: "Río Madre de Dios",
  description: "Siendo el límite natural entre los departamentos La Paz, al sur, y Beni, al norte. El río pasa por algunas pequeñas localidades, como Puerto Pérez (549 hab. en 2001), Chivé, Santa Rosa, Candelaria, Constitución, Villa-Mar, Nazahuasama, Chaco e Independencia. El río deja de ser frontera y se adentra en el departamento de Beni, continuando por pequeñas localidades, como Palmira, Carmen, Frontera, San Miguel, Vargas, Florencia y Sena, donde recibe por la margen derecha al río Sena. Continua el río pasando por las pequeñas aldeas de Conquista, Chorillo, Purgatorio, Loreto, San Miguelito y Agua Dulce.",
  recomendation: "Se recomienda ir cuando las temporada de lluvia han cesado, ya que la crecida de estos rios pueden hasta inundar pequeñas poblaciones aledañas. Llevar un equipaje de verano y tambien un poco de ropa de abrigada, ropa comodas como camisas manga larga, sombreros, proteccion solar. Muy importante llevar mosquitero, ya que la humedad hace que los mosquitos se reproduzcan.",
  other_recomendation: "Recomendamos tener un guia para ir a en lancha por el rio madre de dios, ya que este rio es uno de los mas grande de la amazonia, por lo cual no es raro encontrarse con anacondas y otros animales mas nativos de la zona. Buscar un lugar donde alojarse, ya que son muy pocos los lugares alos cuales uno puede alojarse. Una vez lleguen al rio madre de dios tienen que tener una crema contra los mosquitos ya que estos abundan por la zona, ya que el rio madre de dios cuenta con una humedad alta.",
  how_to_get: "Ruta por carretera más corta desde Santa Cruz a Cobija, la distancia es de 1939 Km y la duración aproximada del viaje de 1 día y 3 horas. Tambien se puede llegar por avioneta el cual su viaje desde cobija a el rio madre de dios tarda alrededor de 25 minutos, para llegar en auto desde santa cruz se sigue la carretera av. virgen de cotoca.",
  what_to_bring: "Mosquitero, Proteccion solar, Proteccion para los mosquitos, Mapas, ropa de verano comoda como ser camisas, camisas manga larga, poleras manga largas, sombreros, comida para el viaje, agua, un poco de ropa abrigada para las noches.",
  city: "Pando",
  rating: 3
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653506285/development/rio_madre_de_dios1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653506287/development/rio_madre_de_dios2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653506289/development/rio_madre_de_dios3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place2.photos.attach(io: file, filename: "rio_madre_de_dios#{e_counter}.jpg")
end


puts "Parque Nacional Sajama"
place3 = Place.create(
  name: "Parque Nacional Sajama",
  description: "Se encuentra en la provincia Sajama, en plena Cordillera Occidental de los Andes y es la primera Área Protegida del país dedicada a la conservación de los ecosistemas altoandinos. En el conjunto, como atractivo natural se destaca el Nevado Sajama, volcán inactivo, cuya altitud es de 6.542 msnm. Alrededor del mismo se extienden amplios bosques y praderas donde se observa fauna silvestre propia de la zona. También se puede observar los nevados Payachatas (Parinacota con 6.032 m.s.n.m.), el bosque de queñuas (árboles que crecen a mayor altitud en el mundo), la Laguna Huayñakota, Maya, la cadena de geisers de Juchusuma Sajama, vertientes en ebullición.",
  recomendation: "Se recomienda llevar ropa abrigada, ya que en esta parte del altiplano la temperatura llega  a bajar hasta los 10°C normalmente. Se recomienda tambien no asustarse por el malestar que puede ocasionar la altura del lugar, ya que es normal para gente que no esta acostumbrada a esta altura, solo calmate ya que al rato cuando tu cuerpo se acostumbre todo pasara. Se recomienda hacer actividades tranquilas ya que la altura hara que te canses rapido.",
  other_recomendation: "La calma es la clave cuando no estas acostumbrado a este tipo de ciudades que estan en una altura considerable, pero nada que temer ya que los malestares por las alturas no suelen durar mas de 1 dia como maximo. No correr ni hacer actividades forzosas o que exijan mucho atu cuerpo ya que puedes cansarte muy rapido y perder toda ganas de seguir explorando el lugar. Tranquilidad y serenidad, si eres una persona que disfruta de un cigarrillo, se recomiendas que no lo hagas ya que sentiras que te faltara el aire debido a la altura.",
  how_to_get: "Se puede llegar al Sajama ya sea desde La Paz u Oruro, o cualquier otro lugar desde donde se pueda coger un bus a Patacamaya. Los únicos buses que van al Sajama directamente son aquellas que se dirigen a Arica (Chile), pero sin embargo estos te dejarán a 12 km del pueblo de Sajama, por lo que tendrás que esperar por un coche particular o simplemente caminar.",
  what_to_bring: "Ropa de invierno, chalinas, medias, comida, bebidas, agua, chulos, crema para que la piel no se reseque, mapas, tener un guia turistico es muy recomendable para estas zonas.",
  city: "Oruro",
  rating: 3
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507526/development/parque_nacional_sajama1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507527/development/parque_nacional_sajama2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507529/development/parque_nacional_sajama3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place3.photos.attach(io: file, filename: "parque_nacional_sajama#{e_counter}.jpg")
end

puts "Reserva Biosfera de Beni"

place4 = Place.create(
  name: "Reserva Biosfera de Beni",
  description: "Tal como lo indica su nombre, la Reserva Biosfera es un gran reservorio natural ubicado en Beni, entre las provincias de Yacuma y Vallivian; el cual ocupa una extensión de unos 1352 kilómetros cuadrados. Este reservorio posee gran atractivo turístico. De hecho, desde octubre 1986 fue reconocido por la UNESCO como “Reserva de la Biosfera” con la finalidad de preservar la fauna y la flora, los recursos hidrológicos y toda la biodiversidad en general de la región.",
  recomendation: "Se recomienda llevar ropa comoda, tambien ropa abrigada no mucha pero si llevar ya que el clima del lugar es muy variable y no se sabe cuando ira a hacer frio y cuando no. Tambien llevar todo equipo de proteccion para la piel, ya que esta parte de la amazonia es para andar y conocer toda la reserva, es un buen lugar para caminar y despejar la mente.",
  other_recomendation: "Otras de las recomendaciones que hacemos en TourBol es que siempre lleven mosquitero y proteccion contra los mosquitos, porque es un lugar muy humedo y perfecto para los criaderos de mosquitos, llevar un poco de comida durante el viaje, aunque tambien se podran comprar comida y bebidas por las trancas de las carreteras.",
  how_to_get: "Para visitar la Estación Biológica del Beni (EBB) es necesario llegar hasta San Borja. Esta localidad está conectada con Trinidad y Rurrenabaque por carretera de tierra y con La Paz y Trinidad por vía aérea. Existen buses diarios desde Trinidad.",
  what_to_bring: "Proteccion solar, Proteccion contra los mosquitos, mosquitero, ropa comoda como ser camisas y poleras de mangas largas, sombreros, comida, bebidas, agua, camara para sacar foto a los diversos paisajes que ofrece este lugar, ropa abrigada ya que el tiempo es muy variado.",
  city: "Beni",
  rating: 4
)

e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507745/development/biosfera_beni1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507746/development/biosfera_beni2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507747/development/biosfera_beni3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place4.photos.attach(io: file, filename: "biosfera_beni#{e_counter}.jpg")
end


place5 = Place.create(
  name: "La Casa Nacional de Moneda",
  description: "Sin duda el lugar turístico más importante que visitar en Potosí es la Casa Nacional de la Moneda. Pero vayamos con lo importante, que es la Casa Nacional de la Moneda, un lugar clave para entender el peso que tuvo la ciudad de Potosí en la historia no sólo de Bolivia, sino del mundo. Dentro trabajaban muchísimos esclavos (tanto indígenas como africanos) acuñando monedas con la plata que se extraía (también forzosamente) del Cerro Rico. La primera casa se fundó en el año 1572, pero la fuerte demanda de la Casa Real de España hizo que se quedara pequeña y se contruyera la que conocemos hoy en día. El museo que visitar (coste de 40 bolivianos para extranjeros, como 5€, con un tour incluido).",
  recomendation: "Se recomienda ir al museo de la casa nacional de moneda solo los dias martes a sabado, ya que solo abren esos dias de 9am a 12 del medio dia, y de 14:30pm a 18:30pm. Los domingos solo abren hasta las 12 del medio dia. Tambien se recomienda que cuando vayan al museo pregunten sobre historia ya que tiene historia muy interesantes cuando la casa de la moneda tenia un impacto no solo en bolivia sino en el mundo entero.",
  other_recomendation: "Recomendamos tambien como es de costumbre en los altiplanos, llevar ropa abrigada para  protegerse del frio. Tambien se recomienda contratar a un guia que te explique todo sobre el lugar ya que cuenta con mucha historia para conocer, las cuales son muy interesantes.",
  how_to_get: "Desde la capital de potosi se puede llegar con Las siguientes líneas de transporte tienen rutas que pasan cerca de Casa de la Moneda, Autobús Autobús: 1705, 301, 302, 3408, CR02. Metro: L1",
  what_to_bring: "Ropa abrigada de invierno, chulos, medias, guantes, proteccion para la piel reseca, tambien llevar un guia turistico para que los informe de la cultura e historia que guarda este lugar.",
  city: "Potosí",
  rating: 4
)


e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507987/development/casa_de_la_moneda1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507988/development/casa_de_la_moneda2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653507990/development/casa_de_la_moneda3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place5.photos.attach(io: file, filename: "casa_de_la_moneda#{e_counter}.jpg")
end

place6 = Place.create(
  name: "Criptas Ocultas",
  description: "Debajo del Altar de la Basílica Menor “San Francisco de Asís” se encontraría la cripta más antigua de Bolivia, descubierta hace 20 años. Este osario alberga los restos de personalidades de la época colonial-republicana de alto estatus social, económico, y religioso. Entre ellos, Juan López de Cepeda, Oidor de la Real Audiencia de La Plata y Juan José de Segovia, el primer presidente criollo de la Real Audiencia de La Plata. Sus restos fueron trasladados a este lugar en 1581, cuando se inauguró la cripta. Se tiene datos de que también estarían enterrados tres conquistadores españoles, caciques y Próceres de la Independencia por lo que se planea a futuro realizar la apertura de túneles ya que se cree que existen otros cinco niveles de restos mortuorios.",
  recomendation: "Se recomienda llevar ropa abrigadas de invierno, ya que el clima es frio normalmente. Tambien se recomienda llevar un guia turistico ya que este lugar esta lleno de historia y es un experience muy buena ir viendo todo lo que ofrece el lugar e ir escuchando su historia y el porque se sigue conservando lugares como estos.",
  other_recomendation: "Tambien recomendamos siempre tener el mayor respeto hacia el medio ambiente ya que en la ciudad de sucre se trabaja mucho con lo que es el medio ambiente, las ciudades y los pueblos son muy limpios y todos contribuyen alo que es el ecosistema de la region. La gente es muy amable, asi que no dudes de hablarles para preguntarles por alguna duda que tengas del lugar.",
  how_to_get: "Desde el centro de sucre puedes llegar a diferentes criptas, entre la mas populares esta la cripta de la iglesia san francisco de asis, las cuales puedes llegar en buses desde la central de sucre",
  what_to_bring: "Ropa de invierno, chulos, guantes, meidas, proteccion para la piel reseca, tener un guia de turismo para que la experiencia sea disfrutada al maximo.",
  city: "Sucre",
  rating: 3
)


e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508153/development/criptas_ocultas1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508155/development/criptas_ocultas2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508156/development/criptas_ocultas3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place6.photos.attach(io: file, filename: "criptas_ocultas#{e_counter}.jpg")
end
place7 = Place.create(
  name: "Pico Tunari",
  description: "Paracualquier amante de la naturaleza o senderismo es una ascension muy recomendable, tanto con un guia de montaña como con un grupo de amigos con nociones sobre alpinismo. Es una ascencion muy facil de realizar, lo unico complicado es la altitud que te resta empuje en la subida, una vez que coronas la cumbre las vistas son marivillosas. Se pasan cerca de dos lagunas de alta montaña la del toro y la macho, en la cara sur hay posibilidad de hacer escalada. Si el tiempo acompaña no hace frio pero es muy cambiante y es bueno llevar ropa de abrigo a la caida del sol las temperaturas bajan de manera muy fuerte. Mucho cuidado con el mal de altura.",
  recomendation: "Se recomienda tener un guia de montaña para la ascension del cerro, no es muy empinado pero si te costara si no tienes experiencias en lo que es el alpinismo. Tambien es un lugar muy bueno para visitar ya que esta relativamente cerca de la ciudad de cochabamba.",
  other_recomendation: "Se recomienda no hacer mucho esfuerzo por subir o ir muy rapido ya que te quedaras sin energia y sin aire, por las alturas que tiene este lugar, aveces cuesta respirar si te apresuras mucho o no descansa durante la ascesion. Tambien recomendamos tomartelo con calma y empezar la ascension desde la mañana para que no se te pase la hora.",
  how_to_get: "La excursión al Pico Tunari comienza temprano en la mañana con la salida de Cochabamba en movilidad hacia Quillacollo, donde se gira desde la carretera principal hacia una carretera que conduce a la Cordillera Tunari. Este camino nos lleva no lejos de las aguas termales de Liriuni a un paisaje montañoso.",
  what_to_bring: "Ropa de invierno bien abrigada, proteccion solar, proteccion contra la piel reseca, chulos, guantes, medias, comida, agua, bebidas, y para disfrutar mejor la experiencia tener un guia turistico.",
  city: "Cochabamba",
  rating: 4
)

e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508249/development/pico_tunari1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508250/development/pico_tunari2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508346/development/pico_tunari3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place7.photos.attach(io: file, filename: "pico_tunari#{e_counter}.jpg")
end

place8 = Place.create(
  name: "Museo Panteológico y Arquelógico",
  description: "El Museo de Paleontología y Arqueología de Tarija se encuentra a tan solo una cuadra de la plaza principal de la ciudad (la Plaza Luis de Fuentes) y contiene fósiles y especímenes que datan de hace millones de años. El edificio de dos plantas, cuya construcción se inició en 1941, también tiene una historia colorida y ha sido usado para varias otras funciones previo a ser entregado a la Universidad Autónoma Juan Misael Saracho de Tarija en 1964 para que finalmente sea utilizado para su propósito pretendido.",
  recomendation: "Se recomienda no hacer mucho ruido ni llamar mucho la atencion cuando estes dentro de este museo, ya que es muy querido por los habitantes de la zona. Tambien te recomendamos que vivas esta aventura o experiencia en familia ya que es un lugar centrico donde ademas de visitar el mismo puedes ir a muchos otros lugares mas",
  other_recomendation: "TourBol tambien recomienda el hecho de no ser timido con los habitantes de tarija, ya que los tarijeños tienen una fama de muy buenas personas, asi que no dudes en hablar con algunos de ellos para despejar dudas o hacer algunas preguntas sobre el lugar.",
  how_to_get: "Museo Nacional Paleontológico y Arqueológico, Calle Gral. Trigo No. 402 Esquina Virginio Lema, Tarija - Bolivia",
  what_to_bring: "Ropa abrigada de invierno, Ropa comoda de verano ya que el clima es muy variado, proteccion solar, proteccion contra la piel reseca, agua, bebidas, chulos, sombreros.",
  city: "Tarija",
  rating: 3
)


e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508589/development/museo_panteologico1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508591/development/museo_panteologico2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508593/development/museo_panteologico3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place8.photos.attach(io: file, filename: "museo_panteologico#{e_counter}.jpg")
end

place9 = Place.create(
  name: "Tiwanaku",
  description: "El Centro Espiritual y Político de la Cultura Tiwanaku es Patrimonio Mundial desde el año 2000, debido a su Valor Universal Excepcional expresado en la concepción y maestría constructiva de los templos y de la estatuaria monumental. Su unidad reside también en los conocimientos de una sociedad multiétnica, dirigida por líderes políticos y espirituales durante más de 1000 años.",
  recomendation: "Se recomienda tener mucha discresion y respeto sobre este lugar, ya que es sagrado para las culturas de la zona, la gente de la zona suele ser muy espiritual y respetuosa hacia los bienes que han dejado sus antepasados, durante mas de 1000 años de cultura pasada de generacion en generacion.",
  other_recomendation: "TourBol recomienda no llamar mucho la atencion e ir con mucho respeto hacia estos lugares espirituales. Otra de las recomendaciones, es el dejarse llevar por la cultura tiwanaku, ya que la misma es muy rica tanto en cultura como en historia.",
  how_to_get: "Desde La Paz hay buses que parten cada media hora desde la calle José María Asín (en la zona del cementerio de La Paz). La duración del viajes es de 1,30 hs. El horario para visitar las ruinas es de 9.00 ha 17.00 hs.",
  what_to_bring: "Ropa de invierno bien abrigada, chulos, chalinas, guantes, comida, bebidas, agua, Proteccion solar, Proteccion contra la piel reseca, y de preferencia tener un guia turistico para que disfruten al maximo de la experiencia que se vive en tiwanaku",
  city: "La Paz",
  rating: 4
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508748/development/tiwanaku1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508750/development/tiwanaku2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653508752/development/tiwanaku3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place9.photos.attach(io: file, filename: "tiwanaku#{e_counter}.jpg")
end

place10 = Place.create(
  name: "Parque Nacional Torotoro",
  description: "Es un auténtico paraíso para los amantes de la geología y la paleontología puesto que se puede encontrar huellas de grandes reptiles del mesozoico y profundas cavernas del origen kárstico. Allí está la extensa Caverna de Umajalanta,​ la caverna de Huaca Senka y otras. Un atractivo particular es el impresionante Cañón del Valle de Toro Toro. El rango altitudinal oscila entre los 3.600 y 1.900 msnm. Asimismo existen huellas de dinosaurios y zonas con abundantes fósiles.",
  recomendation: "Recomendamos que visites este lugar con tiempo, ya que es muy extenso y tiene muchos sitios interesantes, el parque nacional torotoro es inmenso, por lo cual recomendamos que minimo haga una visita de 2 a 3 dias para disfrutar de todo lo que ofrece este fantastico lugar.",
  other_recomendation: "Ademas otras de nuestras recomendaciones para visitar y disfrutar al maximo el parque nacional torotoro esque contrate un guia turistica para que te informe de todos los sitios que se pueden visitar dentro de este lugar el cual es un paraiso para los arquelogos y pantelogos, ya que consta de mucha historia y hay evidencias que habitaban dinosaurios.",
  how_to_get: "hay muchas formas de llegar al parque nacional torotoro, la mas comun es en bus, que se agarra desde el centro de cochabamba en la AV. republica y Mairana hasta anzaldo y luego agarrar un taxi hasta torotoro",
  what_to_bring: "Ropa de invierno bien abrigada, chulos, chalinas, guantes, comida, bebidas, agua, Proteccion solar, Proteccion contra la piel reseca, y de preferencia tener un guia turistico para que disfruten al maximo de la experiencia que se vive en este fabuloso lugar.",
  city: "Cochabamba",
  rating: 5
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653669823/development/torotoro1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653669832/development/torotoro2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653669836/development/torotoro3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place10.photos.attach(io: file, filename: "torotoro#{e_counter}.jpg")
end

place11 = Place.create(
  name: "Agua Termales de Liriuni",
  description: "Liriuni es un balneario natural, ubicado en la cordillera tunari, dentro del municipio de quillacollo. Se encuentra a 20 kilometros de la ciudad de cochabamba. De belleza impactante, el viajero es testigo de como aqui confunde el campo, la brisa, el agua y los sonidos propios del lugar para dar como resultado un paisaje apasionante y cautivador.",
  recomendation: "Unas de las recomendaciones mas importante que hacemos antes de ir a visitar este lugar fantastico, es no quedarse hasta tarde en la noche, ya que hay mucha humedad y por lo tanto se pueden enfermar de gripe, el tener gripe es la unico riesgo de visitar este lugar hermoso. Disfrutaras de mcuhas experiencias junto asu tobogan donde podras lanzarte desde arriba.",
  other_recomendation: "Tourbol tambien recomienda que antes de llegar a este fabuloso lugar hagan una pequeña parada sobre los lugares por donde se pasa para llegar al lugar, ya que es un hermoso paisaje el que se disfruta, junto con todos los animales, faunas y flora, lo que le da un toque muy bonito, antes de llegar al lugar donde se disfruta las aguas termales.",
  how_to_get: "En transporte publico (trufi) desde la ciudad de Cochabamba hay que viajar hasta Quillacollo y bajarse en Plaza Bolívar. Una vez que estamos en Plaza Bolívar (Quillacollo) hay que caminar hasta la parada del trufi 365 con cartel Ironcollo Marquina Bella Vista Liriuni.",
  what_to_bring: "Ropa de verano, sombreros, proteccion solar, protecciona contra la piel reseca, ropa de invierno(si es que se quedan hasta en la noche), comida, agua, bebidas, y camaras para tomar foto a los hermosos paisaje que tiene este lugar.",
  city: "Cochabamba",
  rating: 4
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653670911/development/liriuni1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653670915/development/liriuni2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653670919/development/liriuni3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place11.photos.attach(io: file, filename: "liriuni#{e_counter}.jpg")
end

place12 = Place.create(
  name: "Represa Angostura",
  description: "La Angostura es una laguna artificial convertido en un lugar turístico que atrae a mucha gente para ver el lago, disfrutar de los variados juegos acuáticos y degustar de los diferentes platos preparados en base a pescado, entre muchas otras cosas mas, y lo mejor es que se puede visitar a cualquier hora del dia hasta la hora que quieras.",
  recomendation: "Las recomendaciones que hacemos en tourbol sobre este lugar, es tener cuidado con lo que es la represa, ya que es muy profunda. Siempre contratar una lancha para poder pasear por toda la represa de la angostura, hay muchos ciudadanos los cuales alquilan sus lanchas por hora o lagunas incluso por dias, asi que no dudes en alquilar algunas de estas.",
  other_recomendation: "En tourbol otras de las recomendaciones que hacemos, es que siempre estes atento alos cambios del clima, ya que puede que este lugar se ponga muy frio debido ala humedad que genera la represa, asi que visitalo cuando es temporada de verano para tener un mejor experiencia sobre este hermoso lugar que te ofrece cochabamba.",
  how_to_get: "Hay tres maneras de llegar a la laguna angostura desde cochabamba, una de ellas es la mas comun en bus y en taxi. Para llegar en bus se tiene que tomar un bus desde el centro de cochabamba AV. republica y mairana.",
  what_to_bring: "Es un lugar muy humedo asi que recomendamos llevar, ropa comoda de verano, y si te piensas quedar por la noche lleva un poco de ropa abrigada, ademas, de agua, bebidas y un poco de comida para degustar hasta que llegues al lugar y sombreros, proteccion solar.",
  city: "Cochabamba",
  rating: 3
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653671774/development/angostura1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653671778/development/angostura2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653671784/development/angostura3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place12.photos.attach(io: file, filename: "angostura#{e_counter}.jpg")
end

place13 = Place.create(
  name: "Museo Convento de Santa Teresa",
  description: "El Convento de Santa Teresa pertenece a los lugares turísticos más relevantes de Cochabamba. Comúnmente considerado una fortaleza medieval (en cuanto a arquitectura y elegancia), la historia del Museo Convento empieza durante el siglo XVIII. El Arzobispo de La Plata (Sucre), tramitó el permiso, que ha sido firmado en el Palacio de Aranjuez (Madrid) al rededor del siglo XVIII.",
  recomendation: "Unas de las principales recomendaciones que hacemos cuando quieras visitar este lugar es el hecho, de que vayas con ganas de aprender sobre historias, de que pasaba en esa epoca cuando se contruyo el convento, ya que mas que ser un lugar bonito para visitar, es un lugar donde se aprende mucho de historia, y de como vivian los lugareños en esa epoca.",
  other_recomendation: "Tambien recomendamos, que vayas a visitar todo los barrios aledaños de la zona ya que, todo el pueblo de donde se encuentra el convento de santa teresa, esta diseñada con una arquitectura coloquial, la cual fueron diseñada por los españoles, que habitaban en esa epoca. Tiene un toque europeo todo los alrededores del convento de santa teresa.",
  how_to_get: "Se puede llegar desde el centro de cochabamba, entre calle Baptista y Ecuador. Se puede ir al lugar caminando desde la plaza 14 de Septiembre (3 cuadras).",
  what_to_bring: "Cochabamba por lo general es un poco humedo por lo que que recomendamos llevar ropa de invierno pero tambien llevar ropa de verano. Tambien puedes llevar, sombreros, proteccion solar y proteccion contra la piel reseca.",
  city: "Cochabamba",
  rating: 3
)
e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653674529/development/museo1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653674531/development/museo2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653674536/development/museo3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  place13.photos.attach(io: file, filename: "museo#{e_counter}.jpg")
end

category1 = Category.create(name: "Restaurantes")
category2 = Category.create(name: "Hoteles")
category3 = Category.create(name: "Comercio")
category4 = Category.create(name: "Alquileres")
category5 = Category.create(name: "Servicios")

user1 = User.create(
  email: "asdfgh123x20@gmail.com",
  password:"123123",
  first_name: "Vanessa",
  last_name: "Zelada Cruz",
  phone_number: "75028136",
  whatsapp: true
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653611901/production/perfil1_vxjhej.jpg")
user1.photo.attach(io: file, filename: "perfil1_vxjhej.jpg")

user2 = User.create(
  email: "rodascruzsergio@gmail.com",
  password:"123123",
  first_name: "Romina",
  last_name: "Barbara Urispe",
  phone_number: "69152811",
  whatsapp: true
)

file2 = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653611908/production/perfil2_mj2vtg.jpg")
user2.photo.attach(io: file2, filename: "perfil2_mj2vtg.jpg")

user3 = User.create(
  email: "bebichavez5@gmail.com",
  password:"123123",
  first_name: "Rosa",
  last_name: "Jimenez Urquieta",
  phone_number: "78192530",
  whatsapp: true
)

file3 = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653611919/production/perfil3_obrp0f.jpg")
user3.photo.attach(io: file3, filename: "perfil3_obrp0f.jpg")

user4 = User.create(
  email: "oscar.d.rodas@gmail.com",
  password:"123123",
  first_name: "Julieta",
  last_name: "Montenegro",
  phone_number: "78451236",
  whatsapp: false
)

file4 = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653611925/production/perfil4_dyac73.jpg")
user4.photo.attach(io: file4, filename: "perfil4_dyac73.jpg")

publication_1 = Publication.create(
  title: "Venta de Recuerdos",
  description:"Vendemos todo tipo de recuerdos del lugar, pueden pasar a visitarnos para llevarse lindos recuerdos del lugar.",
  status: 1,
  user_id: user1.id,
  place_id: place2.id,
  category_id: category3.id,
  latitude: -12.008783634491476,
  longitude: -68.24138458857533
)

e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653612583/development/publi1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653612587/development/publi2.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653612590/development/publi3.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  publication_1.photos.attach(io: file, filename: "publi#{e_counter}.jpg")
end

publication_2 = Publication.create(
  title: "Alquiler de Casa",
  status: 1,
  description: "Estamos alquilando una casa para turistas, durante 1 semana, el tiempo se puede alargar si lo desean",
  user_id: user2.id,
  place_id: place1.id,
  category_id: category4.id,
  latitude: -18.128271680119624,
  longitude: -68.95354676897952
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653612777/development/alquiler_gbrd1k.jpg")
publication_2.photos.attach(io: file, filename: "alquiler_gbrd1k.jpg")


publication_3 = Publication.create(
  title: "Restaurante la Vanidosa",
  status: 1,
  description: "Vendemos todo tipo de comida tipica, abrimos desde las 11:00am hasta las 16:00pm, en las noches abrimos de 18:00 hasta las 23:00pm",
  user_id: user3.id,
  place_id: place2.id,
  category_id: category1.id,
  latitude: -19.58818672753386,
  longitude: -65.75419479890942
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653612924/development/restau_ipbsgk.jpg")
publication_3.photos.attach(io: file, filename: "restau_ipbsgk.jpg")


publication_4 = Publication.create(
  title: "Servicio de Guía",
  status: 1,
  description: "Brindo mis servicios de guia por todo el dia, cobro 200bs el dia desde las 7:00am hasta las 18:00pm",
  user_id: user4.id,
  place_id: place3.id,
  category_id: category5.id,
  latitude: -19.046000193148796,
  longitude: -65.25887535026845
)

e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613079/development/guia1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613083/development/guia2.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  publication_4.photos.attach(io: file, filename: "guia#{e_counter}.jpg")
end

publication_5 = Publication.create(
  title: "Gasolineria Cordillera",
  status: 1,
  description: "Somos una estacio de servicio de gasolineria, tambien tenemos tienda para abastecimientos.",
  user_id: user2.id,
  place_id: place4.id,
  category_id: category5.id,
  latitude: -17.28442994599125,
  longitude: -66.39262307909779
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613201/development/gaso_sbbawz.jpg")
publication_5.photos.attach(io: file, filename: "gaso_sbbawz.jpg")

publication_6 = Publication.create(
  title: "Alojamiento Granada",
  description: "Tenemos habitaciones desde 80bs hasta 150bs por cada noche que se quede a dormir.",
  status: 1,
  user_id: user1.id,
  place_id: place5.id,
  category_id: category2.id,
  latitude: -19.58818672753386,
  longitude: -65.75419479890942
)

e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613307/development/aloja1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613341/development/aloja2.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  publication_6.photos.attach(io: file, filename: "aloja#{e_counter}.jpg")
end

publication_7 = Publication.create(
  title: "Venta de Ropa",
  description: "Vendemos todo clase de ropa desde ropa de verano hasta ropa de invierno abrimos todo el dia desde las 7:00am hasta las 22:pm.",
  status: 1,
  user_id: user4.id,
  place_id: place6.id,
  category_id: category3.id,
  latitude: -21.534632350883516,
  longitude: -64.73492913100574
)

e_counter = 0
["https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613464/development/ropa1.jpg",
"https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613468/development/ropa2.jpg"].map do |image|
  e_counter += 1
  file = URI.open(image)
  publication_7.photos.attach(io: file, filename: "ropa#{e_counter}.jpg")
end

publication_8 = Publication.create(
  title: "Cabaña en Alquiler",
  description: "Rento cabaña hermosa en la zona, por tan solo 300bs el dia, el dia comienza desde las 7:00 am",
  status: 1,
  user_id: user2.id,
  place_id: place7.id,
  category_id: category4.id,
  latitude: -16.554305376381944,
  longitude: -68.6739378879088
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613589/development/caba.jpg")
publication_8.photos.attach(io: file, filename: "caba.jpg")

publication_9 = Publication.create(
  title: "Restaurante Espejillos",
  status: 1,
  description: "Preparamos todo tipo de comida, durante todo el dia, tambien hacemos cena y desayuno. Tenemos delivery para llevar tambien",
  user_id: user1.id,
  place_id: place8.id,
  category_id: category1.id,
  latitude: -17.901446807737162,
  longitude: -63.44488745279934
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613709/development/espejo_oywgjf.jpg")
publication_9.photos.attach(io: file, filename: "espejo_oywgjf.jpg")

publication_10 = Publication.create(
  title: "Venta de productos Varios",
  description: "Vendemos toda clase de productos, durante todo el dia, tambien vendemos coca machucada y tenemos delivery.",
  status: 1,
  user_id: user3.id,
  place_id: place9.id,
  category_id: category3.id,
  latitude: -18.128271680119624,
  longitude: -68.95354676897952
)

file = URI.open("https://res.cloudinary.com/dgzbf6kp2/image/upload/v1653613797/development/tienda3_x3weoi.jpg")
publication_10.photos.attach(io: file, filename: "tienda3_x3weoi.jpg")
