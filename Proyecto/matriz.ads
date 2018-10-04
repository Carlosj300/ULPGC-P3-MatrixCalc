package Matriz is

   type Matriz (F : Natural, C : Natural) is private;
   
   -- Funcion para sumar
   function sumar (m1 : Matriz, m2 : Matriz) return Matriz;
   
   -- Funcion para restar
   function restar (m1 : Matriz, m2 : Matriz) return Matriz;
   
   -- Funcion para multiplicar matrices
   function multMat (m1 : Matriz, m2 : Matriz) return Matriz;
   
   -- Funcion para calcular la traspuesta
   procedure traspuesta (m : in out Matriz);
   
   -- Funcion para calcular la inversa
   procedure inversa (m : in out Matriz);
   
   -- Funcion para multiplicar por una constante
   function multCons (m : Matriz, value : Float) return Matriz;
   
   -- Funcion para calcular el determinante
   function determinante (m : Matriz) return float;
   
   -- Funcion para crear matriz unidad
   function matUnidad (n : Natural) return Matriz;
   
   -- Funcion que comparar si dos matrices son iguales
   function equals (m1 : Matriz; m2 : Matriz) return Boolean;
   
private

   -- Definicion del objeto Matriz
   type Matriz (F : Natural, C : Natural) is record
      mat : array (0 .. F, 0 .. C) of Float;
   end record;
   
end Matriz;
