# Practica9

	Considere el desarrollo de una aplicación que contemple la creación de Matrices. Se ha de utilizar una representación para matrices densas y otra diferente para matrices dispersas. Una matriz se considerará dispersa si tiene más de un 60% de ceros. Se ha de establecer una relación de herencia entre las clases que se utilicen para su representación. Las operaciones básicas con matrices son diferentes en cada caso. Las operaciones básicas con matrices son diferentes en cada caso.

	El entregable de esta práctica tiene que ser una Gema Ruby. Para su creación se ha de utilizar la herramienta Bundler(http://gembundler.com/)

# Estructura de la gema 'Practica9'

 	.
	├── bin
	│   	└── Practica9
	├── Gemfile
	├── lib
	│   ├── Practica9
	│   │   └── version.rb
	│   └── Practica9.rb
	├── LICENSE.txt
	├── Practica9.gemspec
	├── Rakefile
	├── README.md
	└── README.md~

# Diseño

	Creamos una clase abstracta llamada Matrices, la clase madre, de la que heredan dos clases, la clase MatrizDensa y la clase MatrizDispersa.

	- clase MatrizDensa: clase desarrollada en la práctica anterior.
	
	- clase MatrizDispersa: creamos un array de posiciones y otro de elementos. En las matrices dispersas se caracterizan por tener tantos ceros que se debe tener en cuenta. Se tiene entonces que evitar hacer operaciones sobre esos ceros para ahorra tiempo de computacion y memoria al no guardar los elementos ceros.

## Installation

Add this line to your application's Gemfile:

    gem 'Practica9'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Practica9

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
