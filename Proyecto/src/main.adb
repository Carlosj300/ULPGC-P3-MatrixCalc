with Matriz; use Matriz;
with Assertions; use Assertions;

procedure main is

   procedure Test_1 is
      -- Variables
      a : Matrix (2,2);
   begin
      a.mat(1,1) := 5.0;
   end Test_1;

begin

   Test_1;

end main;
