with Matriz; use Matriz;
with Assertions; use Assertions;
with Ada.Text_IO; use Ada.Text_IO;

procedure main is

   procedure Test_Init is
      -- Variables
      a : Matrix (0, 0);
      arr : arrayFloat (1 .. 9);
   begin

      -- Iniciando arrays
      arr := (2.0,4.0,6.0,1.0,3.0,5.0,0.0,8.0,9.0);

      -- Probando
      init(a, arr);
      Assert_True (a.f = 0);
      Assert_True (a.c = 0);

   exception
      when Assertion_Error =>
         Put_Line (" Failed (assertion)");
      when others =>
         Put_Line (" Failed (exception)");

   end Test_Init;

begin

   Put_Line("Test Init - Inicio");
   Test_Init;
   Put_Line("Test Init - fin");

end main;
