import 'package:movies/models/response_now_player/results.dart';

import 'dart:convert';

/// page : 1
/// results : [{"adult":false,"backdrop_path":"/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg","genre_ids":[28,12,878],"id":634649,"original_language":"en","original_title":"Spider-Man: No Way Home","overview":"Peter Parker es desenmascarado y por tanto no es capaz de separar su vida normal de los enormes riesgos que conlleva ser un súper héroe. Cuando pide ayuda a Doctor Strange, los riesgos pasan a ser aún más peligrosos, obligándole a descubrir lo que realmente significa ser Spider-Man.","popularity":13195.451,"poster_path":"/rkLhaNa37IwzWis8rzWMAYTCdIK.jpg","release_date":"2021-12-15","title":"Spider-Man: No Way Home","video":false,"vote_average":8.5,"vote_count":6054},{"adult":false,"backdrop_path":"/k2twTjSddgLc1oFFHVibfxp2kQV.jpg","genre_ids":[28,12,14,878],"id":524434,"original_language":"en","original_title":"Eternals","overview":"Hace millones de años, los seres cósmicos conocidos como los Celestiales comenzaron a experimentar genéticamente con los humanos. Su intención era crear individuos superpoderosos que hicieran únicamente el bien, pero algo salió mal y aparecieron los Desviantes, destruyendo y creando el caos a su paso. Ambas razas se han enfrentado en una eterna lucha de poder a lo largo de la historia. En medio de esta guerra, Ikaris y Sersi tratarán de vivir su propia historia de amor.","popularity":9373.581,"poster_path":"/p9PV024vG2I55Rk7tFR3wOdRWaF.jpg","release_date":"2021-11-03","title":"Eternals","video":false,"vote_average":7.3,"vote_count":3559},{"adult":false,"backdrop_path":"/qBLEWvJNVsehJkEJqIigPsWyBse.jpg","genre_ids":[16,10751,14,35,12],"id":585083,"original_language":"en","original_title":"Hotel Transylvania: Transformania","overview":"Drac y la pandilla vuelven, como nunca los habías visto antes en Hotel Transilvania: Transformanía. Volveremos a encontrarnos con nuestros monstruos favoritos en una aventura completamente nueva en la que Drac se enfrentará a una de las situaciones más aterradoras vividas hasta el momento. Cuando el misterioso invento de Van Helsing, el \"Rayo Monstrificador\", se vuelve totalmente fuera de control, Drac y sus monstruosos amigos se transforman en humanos, ¡y Johnny se convierte en un monstruo!","popularity":7213.45,"poster_path":"/pwSlzCAynIF6aEP7oxWddo7Kng2.jpg","release_date":"2022-01-13","title":"Hotel Transilvania: Transformanía","video":false,"vote_average":7.7,"vote_count":1153},{"adult":false,"backdrop_path":"/3G1Q5xF40HkUBJXxt2DQgQzKTp5.jpg","genre_ids":[16,35,10751,14],"id":568124,"original_language":"en","original_title":"Encanto","overview":"\"Encanto\" relata la historia de los Madrigal, una familia extraordinaria que vive en una casa mágica de un pueblo vibrante en las montañas de Colombia escondidas en un “Encanto”. La magia del Encanto ha bendecido a cada niño de la familia con un don único, desde la superfuerza hasta el poder de sanar. A todos, excepto Mirabel, quien desea ser tan especial como el resto de su familia.  Pero cuando la magia que rodea al Encanto está en peligro, Mirabel decide que ella, la única Madrigal sin ningún tipo de don único, puede ser la única esperanza de su excepcional familia.","popularity":5036.143,"poster_path":"/3wdx3pfyYEwuvYRGBr9TkxM5vEQ.jpg","release_date":"2021-11-24","title":"Encanto","video":false,"vote_average":7.8,"vote_count":3472},{"adult":false,"backdrop_path":"/o76ZDm8PS9791XiuieNB93UZcRV.jpg","genre_ids":[27,28,878],"id":460458,"original_language":"en","original_title":"Resident Evil: Welcome to Raccoon City","overview":"Nueva adaptación al cine de los videojuegos de Capcom. La que fue una pujante ciudad sede del gigante farmacéutico Umbrella Corporation, Raccoon City, es ahora un pueblo agonizante del Medio Oeste. El éxodo de la compañía dejó a la ciudad convertida en un erial… con un gran mal gestándose bajo la superficie. Cuando ese mal se desata, un grupo de supervivientes deben unirse para destapar la verdad detrás de Umbrella y sobrevivir a la noche.","popularity":4765.246,"poster_path":"/oRIoAzRLtoNO9adWRW0jeGfMr0N.jpg","release_date":"2021-11-24","title":"Resident Evil: Bienvenidos a Raccoon City","video":false,"vote_average":6.1,"vote_count":1028},{"adult":false,"backdrop_path":"/tutaKitJJIaqZPyMz7rxrhb4Yxm.jpg","genre_ids":[35,16,10751,10402],"id":438695,"original_language":"en","original_title":"Sing 2","overview":"Buster Moon y sus amigos deben persuadir a la estrella del rock Clay Calloway para que se una a ellos en el estreno de un nuevo espectáculo.","popularity":4593.267,"poster_path":"/ybjcJqJ4KGFYSgfDoODdRfqhGV9.jpg","release_date":"2021-12-01","title":"¡Canta! 2","video":false,"vote_average":8.3,"vote_count":1364},{"adult":false,"backdrop_path":"/EnDlndEvw6Ptpp8HIwmRcSSNKQ.jpg","genre_ids":[35,14,12],"id":425909,"original_language":"en","original_title":"Ghostbusters: Afterlife","overview":"Una madre soltera y sus dos hijos se van a vivir a un pequeño pueblo donde descubrirán su conexión con los orígenes de los Cazafantasmas y el legado secreto que su abuelo les ha dejado.","popularity":4555.726,"poster_path":"/yBlHh4BNiGYgfBTAFi8XONfseN8.jpg","release_date":"2021-11-11","title":"Cazafantasmas: Más allá","video":false,"vote_average":7.8,"vote_count":1558},{"adult":false,"backdrop_path":"/t4To8feUSysyBs4tlBAbXIrKlCv.jpg","genre_ids":[28,53],"id":860623,"original_language":"en","original_title":"Last Man Down","overview":"Después de que la civilización sucumbe a una pandemia mortal y su esposa es asesinada, un soldado de las fuerzas especiales abandona su deber y se convierte en un ermitaño en el desierto nórdico. Años más tarde, una mujer herida aparece en su puerta. Ella escapó de un laboratorio y sus perseguidores creen que su sangre es la clave para una cura mundial. Él duda en involucrarse, pero todas las dudas se hacen a un lado cuando descubre que su perseguidor no es otro que el Comandante Stone, el hombre que asesinó a su esposa hace algunos años.","popularity":4385.755,"poster_path":"/bWifGZF9fkJ83zOVHPGaN4ZL2pQ.jpg","release_date":"2021-10-19","title":"El último superviviente","video":false,"vote_average":6.6,"vote_count":154},{"adult":false,"backdrop_path":"/eNI7PtK6DEYgZmHWP9gQNuff8pv.jpg","genre_ids":[878,28,12],"id":624860,"original_language":"en","original_title":"The Matrix Resurrections","overview":"En un mundo compuesto por dos realidades, lo cotidiano y lo oculto tras ella, Thomas Anderson se ve obligado de nuevo a ir tras el conejo blanco. Dicha elección continúa siendo la vía de acceso a Matrix, que esta vez es más poderosa e intrincada que en ocasiones anteriores.","popularity":3588.016,"poster_path":"/dLIwpCTf4QoW01pp85KP9jcfTpu.jpg","release_date":"2021-12-16","title":"Matrix Resurrections","video":false,"vote_average":6.9,"vote_count":2510},{"adult":false,"backdrop_path":"/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg","genre_ids":[878,28,12],"id":580489,"original_language":"en","original_title":"Venom: Let There Be Carnage","overview":"Eddie Brock  y su simbionte Venom todavía están intentando descubrir cómo vivir juntos cuando un preso que está en el corredor de la muerte se infecta con un simbionte propio.","popularity":3103.826,"poster_path":"/b0j9rHYpRML7dKm5xw9e97HTDJF.jpg","release_date":"2021-09-30","title":"Venom: Habrá Matanza","video":false,"vote_average":7.1,"vote_count":6014},{"adult":false,"backdrop_path":"/2Jp2RIwJ3Dt7vamkTt7llVJ7uY.jpg","genre_ids":[53,9648,18],"id":916740,"original_language":"en","original_title":"Brazen","overview":"La novelista de misterio Grace Miller tiene instinto cuando hay que encontrar un motivo... y necesitará su experiencia para ayudar a resolver el asesinato de su hermana.","popularity":2867.381,"poster_path":"/wzOIlPIIeQGGPpxcb24NL7A1xi9.jpg","release_date":"2022-01-13","title":"Sin pudor","video":false,"vote_average":4.8,"vote_count":153},{"adult":false,"backdrop_path":"/AmLpWYm9R3Ur2FLPgj5CH3wR8wp.jpg","genre_ids":[878,53],"id":739413,"original_language":"en","original_title":"Mother/Android","overview":"Georgia y su novio Sam emprenden un viaje traicionero para escapar de su país, que está atrapado en una guerra inesperada con la inteligencia artificial. Días antes de la llegada de su primer hijo, la pareja debe enfrentarse a la Tierra de Nadie, un bastión del levantamiento de los androides, con la esperanza de llegar a un lugar seguro antes de dar a luz.","popularity":2271.007,"poster_path":"/8GZ1QXvndqeXYmLNsmaAGFspKXC.jpg","release_date":"2021-12-17","title":"Madre/Androide","video":false,"vote_average":5.8,"vote_count":330},{"adult":false,"backdrop_path":"/dK12GIdhGP6NPGFssK2Fh265jyr.jpg","genre_ids":[28,35,80,53],"id":512195,"original_language":"en","original_title":"Red Notice","overview":"Cuando la Interpol envía una \"Alerta roja\", significa que los departamentos de Policía de todo el mundo deben estar alerta para capturar a los criminales más buscados. Todas las alarmas saltan cuando un temerario robo une al mejor agente del FBI (Johnson) con dos criminales rivales entre sí (Gadot & Reynolds). Una coincidencia que hará que suceda lo impredecible.","popularity":2229.534,"poster_path":"/odBUpjZGxY3y7FBo5NBtEYGJf5r.jpg","release_date":"2021-11-04","title":"Alerta roja","video":false,"vote_average":6.8,"vote_count":2806},{"adult":false,"backdrop_path":"/cinER0ESG0eJ49kXlExM0MEWGxW.jpg","genre_ids":[28,12,14],"id":566525,"original_language":"en","original_title":"Shang-Chi and the Legend of the Ten Rings","overview":"Adaptación cinematográfica del héroe creado por Steve Englehart y Jim Starlin en 1973, un personaje mitad chino, mitad americano, cuyo característico estilo de combate mezclaba kung-fu, nunchacos y armas de fuego.","popularity":2070.184,"poster_path":"/9VqajJXm29uprSaxOcEh7O0d6E9.jpg","release_date":"2021-09-01","title":"Shang-Chi y la leyenda de los Diez Anillos","video":false,"vote_average":7.8,"vote_count":5342},{"adult":false,"backdrop_path":"/srJ7haOhfykoPOYPQrstOaFem08.jpg","genre_ids":[28],"id":811592,"original_language":"en","original_title":"One Shot","overview":"Un escuadrón de élite de los Navy SEAL, en una misión encubierta para transportar a un prisionero fuera de una prisión insular de la CIA, queda atrapado cuando los insurgentes atacan mientras intentan rescatar al mismo prisionero.","popularity":2009.808,"poster_path":"/mm7vCE7CNyjQpRu8SLGjRl5FMMF.jpg","release_date":"2021-11-05","title":"One Shot","video":false,"vote_average":6.8,"vote_count":113},{"adult":false,"backdrop_path":"/mo57hzhW3BcZL1f7MNteWKHsmlN.jpg","genre_ids":[28,53],"id":763788,"original_language":"en","original_title":"Dangerous","overview":"Un sociópata reformado se dirige a una isla remota después de la muerte de su hermano. Poco después de su llegada, la isla cae bajo el asedio de una pandilla mortal de mercenarios, y cuando descubre su papel en la desaparición de su hermano, se embarca en una incansable búsqueda de venganza.","popularity":1755.692,"poster_path":"/ubeZN7kWlr7Bl1OxdBPck43FhD3.jpg","release_date":"2021-11-05","title":"Instinto peligroso","video":false,"vote_average":6.6,"vote_count":127},{"adult":false,"backdrop_path":"/A6K6Y39vYsYboyKiiXwcPR6Q6tM.jpg","genre_ids":[10770,9648,53,35],"id":922885,"original_language":"es","original_title":"Laura y el misterio del asesino inesperado","overview":"Laura Lebrel vive su investigación más complicada cuando Eugenio Ortiz, un reputado teórico y antiguo asesor de la policía, aparece muerto en su despacho de la universidad en extrañas circunstancias. ¿Logrará resolver el caso?","popularity":1655.249,"poster_path":"/et361dUmgQeiqmlOi4o8zTUKfcs.jpg","release_date":"2022-01-13","title":"Laura y el misterio del asesino inesperado","video":false,"vote_average":6.9,"vote_count":4},{"adult":false,"backdrop_path":"/7esxXkFyl0dVD7ViR0Q6fK5VeXB.jpg","genre_ids":[28,53,80],"id":787310,"original_language":"en","original_title":"Survive the Game","overview":"Cuando el policía David resulta herido en una redada de drogas que sale mal, su socio Cal persigue a los dos criminales que le dispararon. Todos aterrizan en una granja remota propiedad del atribulado veterinario Eric, y mientras Cal y Eric planean su defensa, llegan más miembros de la pandilla, junto con un David herido. Superados en número, los tres héroes deben usar el sigilo, la inteligencia y el buen tiro para acabar con la mafia del narcotráfico.","popularity":1633.862,"poster_path":"/JZU0wyDH5etYhOIdCSJmn4KyYs.jpg","release_date":"2021-10-08","title":"En tierras peligrosas","video":false,"vote_average":5.8,"vote_count":85},{"adult":false,"backdrop_path":"/xPpXYnCWfjkt3zzE0dpCNME1pXF.jpg","genre_ids":[16,28,12,14],"id":635302,"original_language":"ja","original_title":"劇場版「鬼滅の刃」無限列車編","overview":"Tanjiro y sus compañeros se unen al Pilar de las Llamas Kyojuro Rengoku para investigar una misteriosa serie de desapariciones que han ocurrido dentro del “Tren Infinito”. Poco saben que Enmu, uno de los miembros de las Doce Lunas Demoníacas, también está a bordo y les ha preparado una trampa.","popularity":1400.692,"poster_path":"/8t29MfbEkEZixjVbjRkqI5NyFR4.jpg","release_date":"2020-10-16","title":"Guardianes de la Noche: Tren infinito","video":false,"vote_average":8.4,"vote_count":2070},{"adult":false,"backdrop_path":"/1BqX34aJS5J8PefVnQSfQIEPfkl.jpg","genre_ids":[80,28,53],"id":826749,"original_language":"en","original_title":"Fortress","overview":"La historia gira en torno a un complejo de alto secreto para oficiales de inteligencia estadounidenses jubilados. Un grupo de criminales liderados por Balzary violan el recinto, empeñados en vengarse de Robert, lo que obliga al oficial retirado y a su hijo a salvar el día.","popularity":1316.238,"poster_path":"/6N0ZR1ETOOzvwmrDezbzbbiydS1.jpg","release_date":"2021-12-17","title":"Fortress","video":false,"vote_average":6.4,"vote_count":126}]
/// total_pages : 32089
/// total_results : 641761

ResponsePopular responsePopularFromJson(String str) => ResponsePopular.fromJson(json.decode(str));
String responsePopularToJson(ResponsePopular data) => json.encode(data.toJson());
class ResponsePopular {
  ResponsePopular({
      this.page, 
      this.results, 
      this.totalPages, 
      this.totalResults,});

  ResponsePopular.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Movie.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }

}