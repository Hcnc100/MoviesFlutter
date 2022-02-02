import 'dart:convert';

import 'package:movies/models/response_now_player/results.dart';

/// page : 1
/// results : [{"adult":false,"backdrop_path":"/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg","genre_ids":[28,12,878],"id":634649,"original_language":"en","original_title":"Spider-Man: No Way Home","overview":"Peter Parker es desenmascarado y por tanto no es capaz de separar su vida normal de los enormes riesgos que conlleva ser un súper héroe. Cuando pide ayuda a Doctor Strange, los riesgos pasan a ser aún más peligrosos, obligándole a descubrir lo que realmente significa ser Spider-Man.","popularity":17656.865,"poster_path":"/miZFgV81xG324rpUknQX8dtXuBl.jpg","release_date":"2021-12-15","title":"Spider-Man: No Way Home","video":false,"vote_average":8.4,"vote_count":6786},{"adult":false,"backdrop_path":"/zp33lkXqcZWyr7iMxzt3lNDtcPv.jpg","genre_ids":[14,28],"id":557,"original_language":"en","original_title":"Spider-Man","overview":"Peter Parker es un joven y tímido estudiante que vive con su tía May y su tío Ben desde la muerte de sus padres. Un día es mordido por una araña que ha sido modificada genéticamente, descubriendo al día siguiente que posee unos poderes poco habituales: tiene la fuerza y agilidad de una araña.","popularity":286.223,"poster_path":"/2ufIbl01RhJ9QkSUxD0UjDakxvk.jpg","release_date":"2002-05-01","title":"Spider-Man","video":false,"vote_average":7.2,"vote_count":15145},{"adult":false,"backdrop_path":"/7d6EY00g1c39SGZOoCJ5Py9nNth.jpg","genre_ids":[28,12,16,878,35],"id":324857,"original_language":"en","original_title":"Spider-Man: Into the Spider-Verse","overview":"En un universo paralelo donde Peter Parker ha muerto, un joven de secundaria llamado Miles Morales es el nuevo Spider-Man. Sin embargo, cuando el líder mafioso Wilson Fisk (a.k.a Kingpin) construye el \"Super Colisionador\" trae a una versión alternativa de Peter Parker que tratará de enseñarle a Miles como ser un mejor Spider-Man. Pero no será el único Spider Man en entrar a este universo:  4 versiones alternas de Spider-Man aparecerán y buscarán regresar a su universo antes de que toda la realidad se colapse.","popularity":268.872,"poster_path":"/xRMZikjAHNFebD1FLRqgDZeGV4a.jpg","release_date":"2018-12-06","title":"Spider-Man: Un nuevo universo","video":false,"vote_average":8.4,"vote_count":10747},{"adult":false,"backdrop_path":"/tTlAA0REGPXSZPBfWyTW9ipIv1I.jpg","genre_ids":[28,12,878,18],"id":315635,"original_language":"en","original_title":"Spider-Man: Homecoming","overview":"Peter Parker comienza a experimentar su recién descubierta identidad como el superhéroe Spider-Man. Después de la experiencia vivida con los Vengadores, Peter regresa a casa, donde vive con su tía. Bajo la atenta mirada de su mentor Tony Stark, Peter intenta mantener una vida normal como cualquier joven de su edad, pero interrumpe en su rutina diaria el nuevo villano Vulture y, con él, lo más importante de la vida de Peter comenzará a verse amenazado.","popularity":391.709,"poster_path":"/yJfPC6pjSJ5VOsVyXhx5PXBe0mR.jpg","release_date":"2017-07-05","title":"Spider-Man: Homecoming","video":false,"vote_average":7.4,"vote_count":17949},{"adult":false,"backdrop_path":"/6MQmtWk4cFwSDyNvIgoJRBIHUT3.jpg","genre_ids":[14,28,12],"id":559,"original_language":"en","original_title":"Spider-Man 3","overview":"Tercera entrega de las aventuras del joven Peter Parker (Maguire). Parece que Parker ha conseguido por fin el equilibrio entre su devoción por Mary Jane y sus deberes como superhéroe. Pero, de repente, su traje cambia volviéndose negro y aumentando sus poderes; también Peter se transforma, sacando el lado más oscuro y vengativo de su personalidad. Bajo la influencia de este nuevo traje, Peter deja de proteger a la gente que realmente lo quiere y se preocupa por él. En estas circunstancias, no tiene más remedio que elegir entre disfrutar del tentador poder del nuevo traje o seguir siendo el compasivo héroe de antes. Mientras tanto, dos temibles enemigos, Venom y el Hombre de Arena, utilizarán sus poderes para calmar su sed de venganza.","popularity":317.067,"poster_path":"/lkuQzlShE2uzJcsZYU4zBI4VQZP.jpg","release_date":"2007-05-01","title":"Spider-Man 3","video":false,"vote_average":6.3,"vote_count":11176},{"adult":false,"backdrop_path":"/sLWUtbrpiLp23a0XDSiUiltdFPJ.jpg","genre_ids":[28,12,14],"id":1930,"original_language":"en","original_title":"The Amazing Spider-Man","overview":"Un estudiante de secundaria que fue abandonado por sus padres cuando era niño, dejándolo a cargo de su tío Ben (Martin Sheen) y su tía May (Sally Field). Como la mayoría de los adolescentes de su edad, Peter trata de averiguar quién es y qué quiere llegar a ser. Peter también está encontrando su camino con su primer amor de secundaria, Gwen Stacy (Emma Stone), y juntos luchan por su amor con compromiso. Cuando Peter descubre un misterioso maletín que perteneció a su padre, comienza la búsqueda para entender la desaparición de sus padres, una búsqueda que le lleva directamente a Oscorp, el laboratorio del Dr Curt Connors (Rhys Ifans), ex-compañero de trabajo de su padre. Mientras Spider-Man se encuentra en plena colisión con el alter-ego de Connors, el Lagarto, Peter hará elecciones que alterarán sus opciones para usar sus poderes y darán forma a un destino héroico.","popularity":558.268,"poster_path":"/4cw1Vpp68ec518BHiS6gfa3yDoU.jpg","release_date":"2012-06-23","title":"The Amazing Spider-Man","video":false,"vote_average":6.6,"vote_count":14381},{"adult":false,"backdrop_path":"/dCCGyHRjXKNgFti2k3ELxKGGyid.jpg","genre_ids":[12,35,878],"id":927624,"original_language":"en","original_title":"Spider-Man: Snow Day","overview":"","popularity":194.936,"poster_path":"/jeW3LfatgpWSld38Kjd2jf666w6.jpg","release_date":"2021-01-25","title":"Spider-Man: Snow Day","video":false,"vote_average":5.3,"vote_count":3},{"adult":false,"backdrop_path":"/zlpZzccypkAYFZIyYLQcchl90ZC.jpg","genre_ids":[878,28,80,10770],"id":225914,"original_language":"en","original_title":"Spider-Man","overview":"Una extraña ola de crímenes está teniendo lugar en Nueva York. Un extraño personaje controla las mentes de personas anónimas y respetables obligándolas a comportarse como vulgares criminales. Peter Parker es un joven estudiante a punto de doctorarse, por accidente una araña radioactiva le muerde en la mano y le dota de una fuerza y agilidad sobrehumana además de la capacidad de trepar por las paredes. La hija de uno de los detenidos por los robos, Judy Tyler, entra en la vida de Peter cuando este está sacando fotos para el periódico donde trabaja. Al ver que la gente a su alrededor e incluso toda la ciudad está en peligro, decide crearse un disfraz para detener al villano evitando un chantaje de millones de dólares. Gracias a sus recién adquiridos poderes podrá plantar cara a tan peligrosa amenaza.","popularity":73.917,"poster_path":"/nyXfGIkJQgKhugxMVql15URobtt.jpg","release_date":"1977-09-14","title":"Spider-Man: El hombre araña","video":false,"vote_average":5.5,"vote_count":73},{"adult":false,"backdrop_path":"/mPyiNWS0upEG1mGKOKyCQSoZpnp.jpg","genre_ids":[28,12,14],"id":102382,"original_language":"en","original_title":"The Amazing Spider-Man 2","overview":"Peter Parker lleva una vida muy ocupada, compaginando su tiempo entre su papel como Spider-Man, acabando con los malos, y en el instituto con la persona a la que quiere, Gwen. Peter no ve el momento de graduarse. No ha olvidado la promesa que le hizo al padre de Gwen de protegerla, manteniéndose lejos de ella, pero es una promesa que simplemente no puede cumplir. Las cosas cambiarán para Peter cuando aparece un nuevo villano, Electro, y un viejo amigo, Harry Osborn, regresa, al tiempo que descubre nuevas pistas sobre su pasado.","popularity":413.95,"poster_path":"/8W0mMrmaVdSoLz5LnX61gJOXfEb.jpg","release_date":"2014-04-16","title":"The Amazing Spider-Man 2: El poder de Electro","video":false,"vote_average":6.5,"vote_count":10585},{"adult":false,"backdrop_path":"/vamhMTvh9m9zFHDoR0v1nRtf6T4.jpg","genre_ids":[28,12,878],"id":429617,"original_language":"en","original_title":"Spider-Man: Far From Home","overview":"Peter Parker decide irse junto a Michelle Jones, Ned y el resto de sus amigos a pasar unas vacaciones a Europa después de los eventos ocurridos en Vengadores: EndGame. Sin embargo, el plan de Parker por dejar de lado sus superpoderes durante unas semanas se ven truncados cuándo es reclutado por Nick Fury para unirse a Mysterio (un humano que proviene de la Tierra 833, una dimensión del multiverso, que tuvo su primera aparición en Doctor Strange) para luchar contra los elementales (cuatro entes inmortales que vienen de la misma dimensión y que dominan los cuatro elementos de la naturaleza, el fuego, el agua, el aire y la tierra) . En ese momento, Parker vuelve a ponerse el traje de Spider-Man para cumplir con  su labor.","popularity":401.53,"poster_path":"/iKVR1ba3W1wCm9bVCcpnNvxQUWX.jpg","release_date":"2019-06-28","title":"Spider-Man: Lejos de casa","video":false,"vote_average":7.5,"vote_count":11918},{"adult":false,"backdrop_path":"/6al048Lat3eLVQOuKtc9h6Tu94d.jpg","genre_ids":[28,12,14],"id":558,"original_language":"en","original_title":"Spider-Man 2","overview":"Han pasado dos años desde que el tranquilo Peter Parker dejó a Mary Jane Watson, su gran amor, y decidió seguir asumir sus responsabilidades como Spider-Man. Peter debe afrontar nuevos desafíos mientras lucha contra el don y la maldición de sus poderes equilibrando sus dos identidades: el escurridizo superhéroe Spider-Man y el estudiante universitario. Las relaciones con las personas que más aprecia están ahora en peligro de ser descubiertas con la aparición del poderoso villano de múltiples tentáculos Doctor Octopus, \"Doc Ock\". Su atracción por M.J. se hace más fuerte mientras lucha contra el impulso de abandonar su vida secreta y declarar su amor. Mientras tanto, M.J. ha seguido con su vida. Se ha embarcado en su carrera de actriz y tiene un nuevo hombre en su vida. La relación de Peter con su mejor amigo Harry Osborn se ha alejado por la creciente venganza de Harry contra Spider-Man, al que considera responsable de la muerte de su padre.","popularity":87.561,"poster_path":"/tGYrkVuskQKyRZ9WRS6wPTPBJpm.jpg","release_date":"2004-06-25","title":"Spider-Man 2","video":false,"vote_average":7.2,"vote_count":12167},{"adult":false,"backdrop_path":"/eY0BTBROtYTIyUANSF8vAFLMYrj.jpg","genre_ids":[16,28,878,35,12],"id":569094,"original_language":"en","original_title":"Spider-Man: Across the Spider-Verse (Part One)","overview":"Miles Morales regresa para una aventura épica que transportará al amigable vecino de Brooklyn Spider-Man a través del Multiverso para unir fuerzas con Gwen Stacy y un nuevo equipo de Spider-People, y enfrentarse así a un villano mucho más poderoso que cualquier cosa que hayan conocido antes.","popularity":73.785,"poster_path":"/l2hjrByNNohRZhNvQrw6TFzAF5i.jpg","release_date":"2022-10-07","title":"Spider-Man: Across the Spider-Verse \"(Part One)\"","video":false,"vote_average":0,"vote_count":0},{"adult":false,"backdrop_path":null,"genre_ids":[35],"id":467037,"original_language":"en","original_title":"Jack Black: Spider-Man","overview":"","popularity":53.07,"poster_path":"/rhU1aBcLhbqcesDOn6cjmz6sjos.jpg","release_date":"2002-06-06","title":"Jack Black: Spider-Man","video":false,"vote_average":6.7,"vote_count":21},{"adult":false,"backdrop_path":null,"genre_ids":[16],"id":50410,"original_language":"en","original_title":"Spider-Man: The Venom Saga","overview":"","popularity":53.326,"poster_path":"/ilmsQLtthtcD8EU1k25cp0xFQ9a.jpg","release_date":"1994-06-07","title":"Spider-Man: The Venom Saga","video":true,"vote_average":6.5,"vote_count":67},{"adult":false,"backdrop_path":"/i07DYwAVPp1VF4ydwNSGlW814wB.jpg","genre_ids":[18,9648,53],"id":9613,"original_language":"en","original_title":"Spider","overview":"Ambientada en el East End londinense durante los años sesenta. Spider, un hombre de mente frágil e inestable, después de ser dado de alta en un psiquiátrico, es ingresado en un asilo. Allí su mente va reproduciendo una parte fundamental de su infancia.(FILMAFFINITY)","popularity":10.696,"poster_path":"/zvm4WuYxTiGkRagRqHUey0meRQL.jpg","release_date":"2002-11-06","title":"Spider","video":false,"vote_average":6.6,"vote_count":558},{"adult":false,"backdrop_path":null,"genre_ids":[16,12,28],"id":270768,"original_language":"en","original_title":"Daredevil vs. Spider-Man","overview":"","popularity":25.018,"poster_path":"/mEtyZBbVl0sx0y1blYuVDgeNLkr.jpg","release_date":"1994-11-19","title":"Daredevil vs. Spider-Man","video":true,"vote_average":7.7,"vote_count":89},{"adult":false,"backdrop_path":"/cadRu8CfbbKG5BUGEoBTJ8QifOE.jpg","genre_ids":[],"id":927340,"original_language":"en","original_title":"Spider-Man PS5 :The Movie","overview":"","popularity":70.048,"poster_path":"/rJp6pn4ZIQmSA87i2nwGUtUefvt.jpg","release_date":"","title":"Spider-Man PS5 :The Movie","video":false,"vote_average":10,"vote_count":1},{"adult":false,"backdrop_path":"/qdZpvTrr4J7mMAIF0Iv8E5on50G.jpg","genre_ids":[28,12,10751,14,10770],"id":225925,"original_language":"en","original_title":"Spider-Man Strikes Back","overview":"Unos estudiantes de ciencias de la universidad roban plutonio para construir una bomba y denunciar públicamente lo fácil que es hacerse con el material. Su intención no es explotarla, sino conseguir publicidad. Es entonces cuando el villano aparece con sus secuaces y roban la bomba. Peter Parker deberá impedir que logren hacerla estallar en pleno Nueva York.","popularity":24.296,"poster_path":"/5x12ApRXuYnG4SJQOwEW4Fwesp3.jpg","release_date":"1978-12-21","title":"Spider-Man 2: El Hombre Araña en acción","video":false,"vote_average":5.2,"vote_count":32},{"adult":false,"backdrop_path":null,"genre_ids":[28],"id":445033,"original_language":"en","original_title":"Spider-Man","overview":"","popularity":11.959,"poster_path":"/iYBfBk1i9zjN9Vybbj8UgTYzkyv.jpg","release_date":"1969-01-01","title":"Spider-Man","video":false,"vote_average":6.5,"vote_count":14},{"adult":false,"backdrop_path":null,"genre_ids":[28,53,878,27],"id":793798,"original_language":"en","original_title":"Spider-Man: Web Of Carnage","overview":"","popularity":47.739,"poster_path":"/1B07tZFBQr6wml3lXx0u4ELNxQI.jpg","release_date":"","title":"Spider-Man: Web Of Carnage","video":true,"vote_average":0,"vote_count":0}]
/// total_pages : 16
/// total_results : 311

ResponseSearch responseSearchFromJson(String str) =>
    ResponseSearch.fromJson(json.decode(str));

String responseSearchToJson(ResponseSearch data) => json.encode(data.toJson());

class ResponseSearch {
  ResponseSearch({
    this.page,
    this.results,
    this.totalPages,
    this.totalMovie,
  });

  ResponseSearch.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Movie.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalMovie = json['total_results'];
  }

  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalMovie;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalMovie;
    return map;
  }
}