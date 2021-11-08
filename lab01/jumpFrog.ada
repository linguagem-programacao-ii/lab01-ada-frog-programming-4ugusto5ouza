with Ada.Text_IO; 
use Ada.Text_IO;
procedure JumpFrog is
 alturaSalto : Integer := 1; --Informar a altura
 qtdeTubos : Integer := 2; -- Informar a quantidade de tubos
 Index: Integer := 1;
 type Arr is array (Integer range<>) of Integer;
 alturasTubos : Arr := (1,3); -- Informar a altura dos tubos
 alturaEsq : Integer;
 alturaDir : Integer;
 diferencaAltura : Integer;
 salto : Integer;
 ganhou : Integer := 1;
 begin
   loop
     exit when Index = qtdeTubos;
     alturaEsq := alturasTubos(Integer'First + Index -1);
     alturaDir := alturasTubos(Integer'First + Index);
     diferencaAltura := alturaEsq - alturaDir;
     salto := diferencaAltura + alturaSalto;
     if salto < 0 then
       Put_Line ("VOCÊ PERDEU!");
       Index := qtdeTubos;
       ganhou := 0;
     end if;
     Index := Index + 1;
   end loop;
   if ganhou > 0 then
     Put_Line("VOCÊ GANHOU !");
   end if;
end JumpFrog;