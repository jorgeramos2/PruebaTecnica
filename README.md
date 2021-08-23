# PruebaTecnica v1.0.0

## Instalación 
- En terminal correr el siguente comando *sudo gem install cocoapods* (en caso de no tener cocoapods instalado)
- Correr el comando "pod install"

## Pods utilizados 
-  _Kingfisher_ : Se utilizó para descargar las imágenes de los posters de las películas. 
- _youtube-ios-player-helper_: Para abirir el video de los trailers de las películas. 

## Funcionamiento 
-  Colección de peliculas dividas en Most Popular y Playing Now 
- Se usuarion los datos del API de _The Movie Database_
- Al darle click a una película se muestra una pantalla de detalle en donde se muestra el trialer de la 
película , el título y la sinopsis.

## Areas de oprtunidad/ cosas por mejorar 
- Agregar paginacíon a la petición de GET Most Popular  y GET Playing Now para poder mostrar todas las películas en lugar de solo la primera página. Con esto se tendría un infinite scroll en lugar de solo mostrar la primera página. Para lograr esto se volvería a llamar el end point cuando se llega al final de la primera pagina pero ahora se envíara como atributo page=2 y a si sucesivamente hasta llegar a la última página. 
- Mostrar mas información de las películas tanto en la cell MovieCell como en la pantalla de Movie Details. Para esto solo se ocuparía agregar los atributos faltantes al modelo de Movies. 
- Refactor del archivo de APIManager para tener elementos mas reusables. Mejor manejo de la url segmentando los diferentes parametros a enviar. 
- Mostrar mensaje de error al usuario usando algun pod como _GSMessages_
