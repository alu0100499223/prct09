require 'matriz.rb'
require 'fracciones.rb'

describe Matriz do
  before :each do
    @matriz1 = MatrizInteger.new(2,2,[[1,1],[1, 1]])
    # @matriz1[0] = [1,2]
    # @matriz1[1] = [3,4]
                
    @matriz2 = MatrizInteger.new(2,2,[[1,1],[1, 1]])
    # @matriz2[0] = [1,2]
    # @matriz2[1] = [3,4]

    @matriz3 = Matriz.new(2, 3, [[1,2,3], [4,5,6]])

    @f1 = Fraccion.new(1, 2)
    @f2 = Fraccion.new(1, 3)
    @f3 = Fraccion.new(1, 4)
    @f4 = Fraccion.new(1, 5)
   
    @matrizfr1 = MatrizFraccion.new(2, 2,[[@f1, @f2], [@f3, @f4]])
   
    @f5 = Fraccion.new(1, 2)
    @f6 = Fraccion.new(2, 3)
    @f7 = Fraccion.new(3, 4)
    @f8 = Fraccion.new(4, 5)

    @matrizfr2 = MatrizFraccion.new(2, 2, [[@f5, @f6], [@f7, @f8]])
  

    @f9 = Fraccion.new(3, 5)
    @f10 = Fraccion.new(11, 40)
    @f11 = Fraccion.new(49, 150)
    @f12 = Fraccion.new(1, 1)


  end

  describe " Numero de filas y columnas " do
    it " Matriz 1 " do
       @matriz1.filas.should eq(2)
       @matriz1.columnas.should eq(2)
    end
    it " Matriz 2 " do
       @matriz2.filas.should eq(2)
       @matriz2.columnas.should eq(2)
    end
  end

    describe " Comprobamos las matrices " do
    it " Matriz 1: acceso a los elementos en cada posicion " do
       @matriz1.matriz[0][0].should eq(1)
       @matriz1.matriz[0][1].should eq(1)
       @matriz1.matriz[1][0].should eq(1)
       @matriz1.matriz[1][1].should eq(1)
    end
    it " Matriz 2: acceso a los elementos en cada posicion" do
       @matriz2.matriz[0][0].should eq(1)
       @matriz2.matriz[0][1].should eq(1)
       @matriz2.matriz[1][0].should eq(1)
       @matriz2.matriz[1][1].should eq(1)
    end
  end

    describe " Operaciones aritmeticas " do
     it " Suma de dos matrices " do
       @resultado = Matriz.new(2,2,[[2, 2],[2,2]])
       @sum = @matriz1 + @matriz2
       @sum.to_s.should eq(@resultado.to_s)
     end
    
     it " Suma de dos matrices fraccionarias " do
       @resultado = Matriz.new(2, 2, [[@f12, @f12], [@f12, @f12]])
       @sum1 = @matrizfr1 + @matrizfr2
       @sum1.to_s.should eq(@resultado.to_s)
     end

     it " Resta de dos matrices " do
       @resultado = Matriz.new(2,2,[[0, 0],[0,0]])
       @res = @matriz1 - @matriz2
       @res.to_s.should eq(@resultado.to_s)
     end
   
     it " Multiplicacion de dos matrices fraccionarias " do
       @resultado = Matriz.new(2, 2, [[@f1, @f9], [@f10, @f11]])
       @mul1 = @matrizfr1 * @matrizfr2
       @mul1.to_s.should eq(@resultado.to_s)
     end
    
      it " Multiplicacion de dos matrices " do
       @resultado = Matriz.new(2, 2, [[2, 2], [2, 2]])
       @mult = @matriz1 * @matriz2
       @mult.to_s.should eq(@resultado.to_s)
    end
    
    it " Traspuesta de una matriz " do
       @traspuesta = Matriz.new(3, 2, [[1,4], [2, 5], [3, 6]])
       @matriz3.traspuesta.to_s.should eq(@traspuesta.to_s)
    end
   end

end


