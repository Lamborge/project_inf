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

funcion max_el(z:array of integer):integer;
var _i:byte; max:integer;
begin
  max:=0;
  for _i:=0 to length(z) do
    begin
      if z[_i]>max then max:=z[_i];
    end;
end;
begin
  
end.