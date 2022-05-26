# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


place1 = Place.create(
  name: "Espejillos",
  description: "Espejillos es la puerta de entrada al Parque Nacional Amboró, el lugar es un balneario formado por cascadas y saltos de agua rodeado de una vegetación selvática. Un lugar ideal para disfrutar del agua y las caminatas en medio de la naturaleza. Espejillos es parte de una reserva natural que protege el ambiente con importante diversidad de flora y fauna.",
  recomendation: "Una de las principales recomendaciones es ir cuando el clima esta caluroso, ya que cuando el clima esta frio este lugar no puede ser muy agradable, ya que siempre hay mucho viento. Llevar siempre protector solar. Tambien tiene que llevar comida preparada ya que por alli es dificil encontrar un restaurante. Ir siempre en la mañana ya que el tiempo puede pasar muy rapido, de ida para espejillo. Tener cuidado al momento de entrar a nadar, ya que espejillo cuenta con muchas rocas las cuales son muy resbaladizas",
  other_recomendation: "Se recomienda tener cuidados con sus cosas, ya que nunca se sabe que podria pasar. No quedarse hasta en la noche en espejillos ya que a esa hora el lugar parece inhóspito. No ir cuando el clima esta lluvioso o llovio el dia anterior ya que la entrada es un camino de tierra lo cual correrian el riesgo de quedarse varados por medio camino.",
  how_to_get: "Espejillos se encuentra a 45 kilómetros de la ciudad de Santa Cruz de la Sierra. Para llegar se debe conducir por la vieja ruta a Cochabamba hasta el poblado de San José en el Municipio de Porongo, desde allí continuar por un camino bien señalizado hasta la Reserva Natural Municipal de Espejillos.",
  what_to_bring: "Protector Solar, Ropa seca para cambiarse luego de bañarse, Comida, Bebidas, Agua, Chinelas, zapatos (si van a explorar), ropa de baño.",
  city: "Santa Cruz de la Sierra",
  rating: 4,
)

place2 = Place.create(
  name: "Río Madre de Dios",
  description: "Siendo el límite natural entre los departamentos La Paz, al sur, y Beni, al norte. El río pasa por algunas pequeñas localidades, como Puerto Pérez (549 hab. en 2001), Chivé, Santa Rosa, Candelaria, Constitución, Villa-Mar, Nazahuasama, Chaco e Independencia. El río deja de ser frontera y se adentra en el departamento de Beni, continuando por pequeñas localidades, como Palmira, Carmen, Frontera, San Miguel, Vargas, Florencia y Sena, donde recibe por la margen derecha al río Sena. Continua el río pasando por las pequeñas aldeas de Conquista, Chorillo, Purgatorio, Loreto, San Miguelito y Agua Dulce.",
  recomendation: "Se recomienda ir cuando las temporada de lluvia han cesado, ya que la crecida de estos rios pueden hasta inundar pequeñas poblaciones aledañas. Llevar un equipaje de verano y tambien un poco de ropa de abrigada, ropa comodas como camisas manga larga, sombreros, proteccion solar. Muy importante llevar mosquitero, ya que la humedad hace que los mosquitos se reproduzcan.",
  other_recomendation: "Recomendamos tener un guia para ir a en lancha por el rio madre de dios, ya que este rio es uno de los mas grande de la amazonia, por lo cual no es raro encontrarse con anacondas y otros animales mas nativos de la zona. Buscar un lugar donde alojarse, ya que son muy pocos los lugares alos cuales uno puede alojarse. Una vez lleguen al rio madre de dios tienen que tener una crema contra los mosquitos ya que estos abundan por la zona, ya que el rio madre de dios cuenta con una humedad alta.",
  how_to_get: "Ruta por carretera más corta desde Santa Cruz a Cobija, la distancia es de 1939 Km y la duración aproximada del viaje de 1 día y 3 horas. Tambien se puede llegar por avioneta el cual su viaje desde cobija a el rio madre de dios tarda alrededor de 25 minutos, para llegar en auto desde santa cruz se sigue la carretera av. virgen de cotoca.",
  what_to_bring: "Mosquitero, Proteccion solar, Proteccion para los mosquitos, Mapas, ropa de verano comoda como ser camisas, camisas manga larga, poleras manga largas, sombreros, comida para el viaje, agua, un poco de ropa abrigada para las noches.",
  city: "Pando",
  rating: 3,
)

place3 = Place.create(
  name: "Parque Nacional Sajama",
  description: "Se encuentra en la provincia Sajama, en plena Cordillera Occidental de los Andes y es la primera Área Protegida del país dedicada a la conservación de los ecosistemas altoandinos. En el conjunto, como atractivo natural se destaca el Nevado Sajama, volcán inactivo, cuya altitud es de 6.542 msnm. Alrededor del mismo se extienden amplios bosques y praderas donde se observa fauna silvestre propia de la zona. También se puede observar los nevados Payachatas (Parinacota con 6.032 m.s.n.m.), el bosque de queñuas (árboles que crecen a mayor altitud en el mundo), la Laguna Huayñakota, Maya, la cadena de geisers de Juchusuma Sajama, vertientes en ebullición.",
  recomendation: "Se recomienda llevar ropa abrigada, ya que en esta parte del altiplano la temperatura llega  a bajar hasta los 10°C normalmente. Se recomienda tambien no asustarse por el malestar que puede ocasionar la altura del lugar, ya que es normal para gente que no esta acostumbrada a esta altura, solo calmate ya que al rato cuando tu cuerpo se acostumbre todo pasara. Se recomienda hacer actividades tranquilas ya que la altura hara que te canses rapido.",
  other_recomendation: "La calma es la clave cuando no estas acostumbrado a este tipo de ciudades que estan en una altura considerable, pero nada que temer ya que los malestares por las alturas no suelen durar mas de 1 dia como maximo. No correr ni hacer actividades forzosas o que exijan mucho atu cuerpo ya que puedes cansarte muy rapido y perder toda ganas de seguir explorando el lugar. Tranquilidad y serenidad, si eres una persona que disfruta de un cigarrillo, se recomiendas que no lo hagas ya que sentiras que te faltara el aire debido a la altura.",
  how_to_get: "Se puede llegar al Sajama ya sea desde La Paz u Oruro, o cualquier otro lugar desde donde se pueda coger un bus a Patacamaya. Los únicos buses que van al Sajama directamente son aquellas que se dirigen a Arica (Chile), pero sin embargo estos te dejarán a 12 km del pueblo de Sajama, por lo que tendrás que esperar por un coche particular o simplemente caminar.",
  what_to_bring: "Ropa de invierno, chalinas, medias, comida, bebidas, agua, chulos, crema para que la piel no se reseque, mapas, tener un guia turistico es muy recomendable para estas zonas.",
  city: "Oruro",
  rating: 3,
)

place4 = Place.create(
  name: "Reserva Biosfera de Beni",
  description: "Tal como lo indica su nombre, la Reserva Biosfera es un gran reservorio natural ubicado en Beni, entre las provincias de Yacuma y Vallivian; el cual ocupa una extensión de unos 1352 kilómetros cuadrados. Este reservorio posee gran atractivo turístico. De hecho, desde octubre 1986 fue reconocido por la UNESCO como “Reserva de la Biosfera” con la finalidad de preservar la fauna y la flora, los recursos hidrológicos y toda la biodiversidad en general de la región.",
  recomendation: "Se recomienda llevar ropa comoda, tambien ropa abrigada no mucha pero si llevar ya que el clima del lugar es muy variable y no se sabe cuando ira a hacer frio y cuando no. Tambien llevar todo equipo de proteccion para la piel, ya que esta parte de la amazonia es para andar y conocer toda la reserva, es un buen lugar para caminar y despejar la mente.",
  other_recomendation: "Otras de las recomendaciones que hacemos en TourBol es que siempre lleven mosquitero y proteccion contra los mosquitos, porque es un lugar muy humedo y perfecto para los criaderos de mosquitos, llevar un poco de comida durante el viaje, aunque tambien se podran comprar comida y bebidas por las trancas de las carreteras.",
  how_to_get: "Para visitar la Estación Biológica del Beni (EBB) es necesario llegar hasta San Borja. Esta localidad está conectada con Trinidad y Rurrenabaque por carretera de tierra y con La Paz y Trinidad por vía aérea. Existen buses diarios desde Trinidad.",
  what_to_bring: "Proteccion solar, Proteccion contra los mosquitos, mosquitero, ropa comoda como ser camisas y poleras de mangas largas, sombreros, comida, bebidas, agua, camara para sacar foto a los diversos paisajes que ofrece este lugar, ropa abrigada ya que el tiempo es muy variado.",
  city: "Beni",
  rating: 4,
)

place5 = Place.create(
  name: "La Casa Nacional de Moneda",
  description: "Sin duda el lugar turístico más importante que visitar en Potosí es la Casa Nacional de la Moneda. Pero vayamos con lo importante, que es la Casa Nacional de la Moneda, un lugar clave para entender el peso que tuvo la ciudad de Potosí en la historia no sólo de Bolivia, sino del mundo. Dentro trabajaban muchísimos esclavos (tanto indígenas como africanos) acuñando monedas con la plata que se extraía (también forzosamente) del Cerro Rico. La primera casa se fundó en el año 1572, pero la fuerte demanda de la Casa Real de España hizo que se quedara pequeña y se contruyera la que conocemos hoy en día. El museo que visitar (coste de 40 bolivianos para extranjeros, como 5€, con un tour incluido).",
  recomendation: "Se recomienda ir al museo de la casa nacional de moneda solo los dias martes a sabado, ya que solo abren esos dias de 9am a 12 del medio dia, y de 14:30pm a 18:30pm. Los domingos solo abren hasta las 12 del medio dia. Tambien se recomienda que cuando vayan al museo pregunten sobre historia ya que tiene historia muy interesantes cuando la casa de la moneda tenia un impacto no solo en bolivia sino en el mundo entero.",
  other_recomendation: "Recomendamos tambien como es de costumbre en los altiplanos, llevar ropa abrigada para  protegerse del frio. Tambien se recomienda contratar a un guia que te explique todo sobre el lugar ya que cuenta con mucha historia para conocer, las cuales son muy interesantes.",
  how_to_get: "Desde la capital de potosi se puede llegar con Las siguientes líneas de transporte tienen rutas que pasan cerca de Casa de la Moneda, Autobús Autobús: 1705, 301, 302, 3408, CR02. Metro: L1",
  what_to_bring: "Ropa abrigada de invierno, chulos, medias, guantes, proteccion para la piel reseca, tambien llevar un guia turistico para que los informe de la cultura e historia que guarda este lugar.",
  city: "Potosí",
  rating: 4,
)

place6 = Place.create(
  name: "Criptas Ocultas",
  description: "Debajo del Altar de la Basílica Menor “San Francisco de Asís” se encontraría la cripta más antigua de Bolivia, descubierta hace 20 años. Este osario alberga los restos de personalidades de la época colonial-republicana de alto estatus social, económico, y religioso. Entre ellos, Juan López de Cepeda, Oidor de la Real Audiencia de La Plata y Juan José de Segovia, el primer presidente criollo de la Real Audiencia de La Plata. Sus restos fueron trasladados a este lugar en 1581, cuando se inauguró la cripta. Se tiene datos de que también estarían enterrados tres conquistadores españoles, caciques y Próceres de la Independencia por lo que se planea a futuro realizar la apertura de túneles ya que se cree que existen otros cinco niveles de restos mortuorios.",
  recomendation: "Se recomienda llevar ropa abrigadas de invierno, ya que el clima es frio normalmente. Tambien se recomienda llevar un guia turistico ya que este lugar esta lleno de historia y es un experience muy buena ir viendo todo lo que ofrece el lugar e ir escuchando su historia y el porque se sigue conservando lugares como estos.",
  other_recomendation: "Tambien recomendamos siempre tener el mayor respeto hacia el medio ambiente ya que en la ciudad de sucre se trabaja mucho con lo que es el medio ambiente, las ciudades y los pueblos son muy limpios y todos contribuyen alo que es el ecosistema de la region. La gente es muy amable, asi que no dudes de hablarles para preguntarles por alguna duda que tengas del lugar.",
  how_to_get: "Desde el centro de sucre puedes llegar a diferentes criptas, entre la mas populares esta la cripta de la iglesia san francisco de asis, las cuales puedes llegar en buses desde la central de sucre",
  what_to_bring: "Ropa de invierno, chulos, guantes, meidas, proteccion para la piel reseca, tener un guia de turismo para que la experiencia sea disfrutada al maximo.",
  city: "Sucre",
  rating: 3,
)

place7 = Place.create(
  name: "Pico Tunari",
  description: "Paracualquier amante de la naturaleza o senderismo es una ascension muy recomendable, tanto con un guia de montaña como con un grupo de amigos con nociones sobre alpinismo. Es una ascencion muy facil de realizar, lo unico complicado es la altitud que te resta empuje en la subida, una vez que coronas la cumbre las vistas son marivillosas. Se pasan cerca de dos lagunas de alta montaña la del toro y la macho, en la cara sur hay posibilidad de hacer escalada. Si el tiempo acompaña no hace frio pero es muy cambiante y es bueno llevar ropa de abrigo a la caida del sol las temperaturas bajan de manera muy fuerte. Mucho cuidado con el mal de altura.",
  recomendation: "Se recomienda tener un guia de montaña para la ascension del cerro, no es muy empinado pero si te costara si no tienes experiencias en lo que es el alpinismo. Tambien es un lugar muy bueno para visitar ya que esta relativamente cerca de la ciudad de cochabamba.",
  other_recomendation: "Se recomienda no hacer mucho esfuerzo por subir o ir muy rapido ya que te quedaras sin energia y sin aire, por las alturas que tiene este lugar, aveces cuesta respirar si te apresuras mucho o no descansa durante la ascesion. Tambien recomendamos tomartelo con calma y empezar la ascension desde la mañana para que no se te pase la hora.",
  how_to_get: "La excursión al Pico Tunari comienza temprano en la mañana con la salida de Cochabamba en movilidad hacia Quillacollo, donde se gira desde la carretera principal hacia una carretera que conduce a la Cordillera Tunari. Este camino nos lleva no lejos de las aguas termales de Liriuni a un paisaje montañoso.",
  what_to_bring: "Ropa de invierno bien abrigada, proteccion solar, proteccion contra la piel reseca, chulos, guantes, medias, comida, agua, bebidas, y para disfrutar mejor la experiencia tener un guia turistico.",
  city: "Cochabamba",
  rating: 4,
)

place8 = Place.create(
  name: "Museo Panteológico y Arquelógico",
  description: "El Museo de Paleontología y Arqueología de Tarija se encuentra a tan solo una cuadra de la plaza principal de la ciudad (la Plaza Luis de Fuentes) y contiene fósiles y especímenes que datan de hace millones de años. El edificio de dos plantas, cuya construcción se inició en 1941, también tiene una historia colorida y ha sido usado para varias otras funciones previo a ser entregado a la Universidad Autónoma Juan Misael Saracho de Tarija en 1964 para que finalmente sea utilizado para su propósito pretendido.",
  recomendation: "Se recomienda no hacer mucho ruido ni llamar mucho la atencion cuando estes dentro de este museo, ya que es muy querido por los habitantes de la zona. Tambien te recomendamos que vivas esta aventura o experiencia en familia ya que es un lugar centrico donde ademas de visitar el mismo puedes ir a muchos otros lugares mas",
  other_recomendation: "TourBol tambien recomienda el hecho de no ser timido con los habitantes de tarija, ya que los tarijeños tienen una fama de muy buenas personas, asi que no dudes en hablar con algunos de ellos para despejar dudas o hacer algunas preguntas sobre el lugar.",
  how_to_get: "Museo Nacional Paleontológico y Arqueológico, Calle Gral. Trigo No. 402 Esquina Virginio Lema, Tarija - Bolivia",
  what_to_bring: "Ropa abrigada de invierno, Ropa comoda de verano ya que el clima es muy variado, proteccion solar, proteccion contra la piel reseca, agua, bebidas, chulos, sombreros.",
  city: "Tarija",
  rating: 3,
)

place9 = Place.create(
  name: "Tiwanaku",
  description: "El Centro Espiritual y Político de la Cultura Tiwanaku es Patrimonio Mundial desde el año 2000, debido a su Valor Universal Excepcional expresado en la concepción y maestría constructiva de los templos y de la estatuaria monumental. Su unidad reside también en los conocimientos de una sociedad multiétnica, dirigida por líderes políticos y espirituales durante más de 1000 años.",
  recomendation: "Se recomienda tener mucha discresion y respeto sobre este lugar, ya que es sagrado para las culturas de la zona, la gente de la zona suele ser muy espiritual y respetuosa hacia los bienes que han dejado sus antepasados, durante mas de 1000 años de cultura pasada de generacion en generacion.",
  other_recomendation: "TourBol recomienda no llamar mucho la atencion e ir con mucho respeto hacia estos lugares espirituales. Otra de las recomendaciones, es el dejarse llevar por la cultura tiwanaku, ya que la misma es muy rica tanto en cultura como en historia.",
  how_to_get: "Desde La Paz hay buses que parten cada media hora desde la calle José María Asín (en la zona del cementerio de La Paz). La duración del viajes es de 1,30 hs. El horario para visitar las ruinas es de 9.00 ha 17.00 hs.",
  what_to_bring: "Ropa de invierno bien abrigada, chulos, chalinas, guantes, comida, bebidas, agua, Proteccion solar, Proteccion contra la piel reseca, y de preferencia tener un guia turistico para que disfruten al maximo de la experiencia que se vive en tiwanaku",
  city: "La Paz",
  rating: 4,
)

category1 = Category.create(name: "Restaurantes")
category2 = Category.create(name: "Hoteles")
category3 = Category.create(name: "Comercio")
category4 = Category.create(name: "Servicios")
