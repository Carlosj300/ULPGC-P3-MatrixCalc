package body Matriz is

   function sumar (m1 : Matriz; m2 : Matriz) return Matriz is
     
     -- Variables
     result : Matriz (m1.f, m1.c);
   
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
   
   function restar (m1 : Matriz; m2 : Matriz) return Matriz is
     
     -- Variables
     result : Matriz (m1.f, m1.c);
   
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
   
   procedure traspuesta (m : in out Matriz) is
      -- Variables
      aux : Float;
      
   begin
      -- Bucle para intercambiar filas y columnas
      for y in m1.mat'Range(1) loop
         for in x m2.mat'Range(2) loop
            aux := m.mat(y,x);
            m.mat(y,x) := m.mat(x,y);
            m.mat(x,y) := aux;
         end loop;
      end loop;
      
   end traspuesta;
   
   function equals (m1 : Matriz; m2 : Matriz) return Boolean is
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


   function multCons (m1 : Matriz; n : Integer) return Matriz is
      
      -- Variables
      result : Matriz (m1.f, m1.c);
      
   begin
      
      -- Bucle para recorrer la matriz a multiplicar
      for y in m1.mat'Range(1) loop
         for x in m1.mat'Range(2) loop
            result(y,x) := m1(y,x) * n;
         end loop;
      end loop;
      
      --Devolucion del resultado
      return result;
   end multiplicacion_const;
   
   function matUnidad (n : Integer) return Matriz is
      
      -- Variables
      result : Matriz (0 .. n, 0 .. n);
    
   begin
      
      --Bucle para inicializar la matriz
      for y in result.mat'Range(1) loop
         for x in result.mat'Range(2) loop
            if y = x then
               result(y,x) := 1;
            else
               result(y,x) := 0;
            end if;
         end loop;
      end loop;
         
      --Devolucion del resultado
      return result;
   end unitaria;
   
end Matriz;
