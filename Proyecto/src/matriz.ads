package Matriz  with SPARK_Mode => On is
   
   -- Definicion de array
   type Vector is array (Natural Range <>, Natural Range <>) of Float;
   type arrayFloat is array (Natural Range <>) of Float;

   -- Definicion del objeto Matrix
   type Matrix (f : Natural; c : Natural) is record
      mat : Vector (0 .. F, 0 .. C);
   end record;
   
   procedure init (m : out Matrix; values : arrayFloat);
   -- Funcion para inicializar una matriz
   
   function sumar (m1 : Matrix; m2 : Matrix) return Matrix;
   -- Funcion para sumar
   
   function restar (m1 : Matrix; m2 : Matrix) return Matrix;
   -- Funcion para restar

   function multMat (m1 : Matrix; m2 : Matrix) return Matrix;
   -- Funcion para multiplicar matrices
     
   procedure traspuesta (m : in out Matrix)
   with
       pre => m.f > 0 and m.c > 0,
     
       post => traspuesta'Result.c = m.f and then traspuesta'Result.f = m.c;
   -- Funcion para calcular la traspuesta
     
   function multCons (m : Matrix; value : Float) return Matrix;
   -- Funcion para multiplicar por una constante
     
   function matUnidad (n : Natural) return Matrix;
   -- Funcion para crear Matrix unidad
  
   function equals (m1 : Matrix; m2 : Matrix) return Boolean;
   -- Funcion que comparar si dos matrices son iguales
   
end Matriz;
