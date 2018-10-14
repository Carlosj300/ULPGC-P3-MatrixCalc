package body Matriz with SPARK_Mode => On is

   procedure init (m : out Matrix; values : arrayFloat) is
      
      -- Variables
      desp : Integer := values'First;
      
   begin

      -- Recorremos la matrix y anadimos valores
      for y in m.mat'Range(1) loop
         for x in m.mat'Range(2) loop
            -- Guardamos valor y actualizamos desp
            m.mat(y,x) := values(desp);
            desp := desp + 1;
         end loop;
      end loop;
   end init;
   
   function sumar (m1 : Matrix; m2 : Matrix) return Matrix is
     
      -- Variables
      result : Matrix (m1.f, m1.c);
   
   begin
      
      -- Bucle para sumar posiciones
      for y in m1.mat'Range(1) loop
         for x in m1.mat'Range(2) loop
            result.mat(y,x) := m1.mat(y,x) + m2.mat(y,x);
         end loop;
      end loop;
   
      -- Devolucion de datos
      return result;
   end sumar;
   
   function restar (m1 : Matrix; m2 : Matrix) return Matrix is
     
     -- Variables
     result : Matrix (m1.f, m1.c);
   
   begin
      
      -- Bucle para sumar posiciones
      for y in m1.mat'Range(1) loop
         for x in m1.mat'Range(2) loop
            result.mat(y,x) := m1.mat(y,x) - m2.mat(y,x);
         end loop;
      end loop;
   
      -- Devolucion de datos
      return result;
   end restar;
   
   function multMat (m1 : Matrix; m2 : Matrix) return Matrix is
      -- Variables
      result : Matrix (m1.f, m2.c);
      almacen : Float := 0.0;
      desp : Integer := 0;
      
   begin
      
      -- Comprobamos que las matrices son multiplicables
      if m1.c /= m2.f then
         return result;
      end if;
      
      -- Bucle para multiplicar las matrices
      for y in m1.mat'Range(1) loop
         for x in m2.mat'Range(2) loop
            almacen := almacen + (m1.mat(y,x) * m2.mat(x,y));
         end loop;
         
         -- Almaceno el valor
         result.mat(y, desp) := almacen;
         
         -- Actualizo desp
         if desp >= m1.c then
            desp := 0;
         else
            desp := desp + 1;
         end if;
      end loop;
      
      -- Devolucion de datos
      return result;
   end multMat;
   
   procedure traspuesta (m : in out Matrix) is
      -- Variables
      aux : Float;
      
   begin
      -- Bucle para intercambiar filas y columnas
      for y in 0 .. m.f loop
         for x in 0 .. m.c loop
            aux := m.mat(y,x);
            m.mat(y,x) := m.mat(x,y);
            m.mat(x,y) := aux;
         end loop;
      end loop;
      
   end traspuesta;
   
   function multCons (m : Matrix; value : Float) return Matrix is
      
      -- Variables
      result : Matrix (m.f, m.c);
      
   begin
      
      -- Bucle para recorrer la Matrix a multiplicar
      for y in m.mat'Range(1) loop
         for x in m.mat'Range(2) loop
            result.mat(y,x) := m.mat(y,x) * value;
         end loop;
      end loop;
      
      --Devolucion del resultado
      return result;
   end multCons;
   
   function matUnidad (n : Natural) return Matrix is
      
      -- Variables
      result : Matrix (n,n);
    
   begin
      
      --Bucle para inicializar la Matrix
      for y in result.mat'Range(1) loop
         for x in result.mat'Range(2) loop
            if y = x then
               result.mat(y,x) := 1.0;
            else
               result.mat(y,x) := 0.0;
            end if;
         end loop;
      end loop;
         
      --Devolucion del resultado
      return result;
   end matUnidad;
   
   function equals (m1 : Matrix; m2 : Matrix) return Boolean is
   begin
      
      -- Comparamos si ambas matrices coinciden en dimensines
      if m1.f /= m2.f or m1.c /= m2.c then
         return False;
      end if;
      
      -- Ambas matrices tienen misma dimension pasamos a comparar sus valores
      for y in m1.mat'Range(1) loop
         for x in m1.mat'Range(2) loop
            if m1.mat(y,x) /= m2.mat(y,x) then
               return False;
            end if;
         end loop;
      end loop;
      
      -- Devolucion por defecto
      return True;
   end equals;
   
end Matriz;
