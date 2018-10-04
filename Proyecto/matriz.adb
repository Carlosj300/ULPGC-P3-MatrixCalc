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

end Matriz;
