program project;
var
  A,B,C:array of integer;
  N,K,M:integer;
  i:byte;
function sum_arr(z:array of integer):integer;
var sum, _i:integer;
begin
  sum:=0;
  for _i:=0 to length(z) do sum:=sum+z[_i];
  sum_arr:=sum;
end;

function max_el(z:array of integer):integer;
var _i:byte; max:integer;
begin
  max:=0;
  for _i:=0 to length(z) do if z[_i]>max then max:=z[_i];
  max_el:=max;
end;

function max_num(x,y:integer):integer;
begin
  if x>y then max_num:=x else max_num:=y;
end;

begin
  writeln('Введите кол-во баранов в стаде 1: '); read(N);
  writeln('Введите кол-во баранов в стаде 2: '); read(K);
  writeln('Введите кол-во баранов в стаде 3: '); read(M);
  SetLength(A,N);
  SetLength(B,K);
  SetLength(C,M);
  
end.