program project;
var
  A,B,C:array of integer;
  N,K,M,max_time:integer;
  i:byte;
function sum_arr(z:array of integer):integer;
var sum, _i:integer;
begin
  sum:=0;
  for _i:=0 to length(z)-1 do sum:=sum+z[_i];
  sum_arr:=sum;
end;

function max_el(z:array of integer):integer;
var _i:byte; max:integer;
begin
  max:=0;
  for _i:=0 to length(z)-1 do if z[_i]>max then max:=z[_i];
  max_el:=max;
end;

function rand_arr(z:array of integer):array of integer;
var _i:byte;
begin
  for _i:=0 to length(z)-1 do begin
  z[_i]:=random(100);
  end;
  rand_arr:=z;
end;

function max_num(x,y:integer):integer;
begin
  if x>y then max_num:=x else max_num:=y;
end;

begin
  writeln('Введите кол-во баранов в стаде 1: '); read(N);
  writeln('Введите кол-во баранов в стаде 2: '); read(K);
  writeln('Введите кол-во баранов в стаде 3: '); read(M);
  SetLength(A,N+1);
  SetLength(B,K+1);
  SetLength(C,M+1);
  randomize;
  rand_arr(A); rand_arr(B); rand_arr(C);
  writeln('Самое большее время признания у стада: ', max_num(sum_arr(A),max(sum_arr(B),sum_arr(C))));
  writeln('Самое большее время признания животного: ', max_num(max_el(A),max(max_el(B),max_el(C))));
end.