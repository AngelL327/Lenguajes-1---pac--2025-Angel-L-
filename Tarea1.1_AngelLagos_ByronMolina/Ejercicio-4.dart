class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro({
    required this.titulo,
    required this.autor,
    required this.anioPublicacion,
  });
}

class Biblioteca {
  final List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> busLiPorAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  void listarLibrosOrdenados() {
    for (int i = 0; i < libros.length - 1; i++) {
      for (int j = i + 1; j < libros.length; j++) {
        if (libros[i].anioPublicacion > libros[j].anioPublicacion) {
          final temp = libros[i];
          libros[i] = libros[j];
          libros[j] = temp;
        }
      }
    }

    print('------- Lista de libros ordenados por año de publicación -------');
    libros.forEach((libro) {
      print('${libro.titulo} - ${libro.autor} ${libro.anioPublicacion}');
    });
  }
}

void main() {
  final biblioteca = Biblioteca();

  final libro1 = Libro(titulo: '1984', autor: 'George Orwell', anioPublicacion: 1949);
  final libro2 = Libro(titulo: 'Cien años de soledad', autor: 'Gabriel García Márquez', anioPublicacion: 1967);
  final libro3 = Libro(titulo: 'El león, la bruja y el armario', autor: ' C.S Lewis ', anioPublicacion: 1950);
  final libro4 = Libro(titulo: 'Don Quijote de la Mancha', autor: 'Miguel de Cervantes', anioPublicacion: 1605);

  biblioteca.agregarLibro(libro1);
  biblioteca.agregarLibro(libro2);
  biblioteca.agregarLibro(libro3);
  biblioteca.agregarLibro(libro4);

  biblioteca.eliminarLibro('Cien años de soledad');

  final librosOrwell = biblioteca.busLiPorAutor('George Orwell');
  print('Libros de George Orwell:');
  librosOrwell.forEach((libro) {
    print(libro.titulo);
  });

  biblioteca.listarLibrosOrdenados();
}
