//Проверить год на високосность
begin
var year := ReadInteger('Задание 1. Введите год: ');
Assert(year > 0);
writeln('Год високосный: ', (year mod 4 = 0) and ((year mod 400 = 0) or not (year mod 100 = 0))) ;

//кол-во секунд в минуте
writeln(newline);
writeln('Задание 2. Секунд в минуте: ', 60);

//Какой из дней ближе к НГ?
writeln(newline);
var (d1, m1) := ReadInteger2('Задание 3. Введите число и месяц: ');
var (d2, m2) := ReadInteger2('Введите число и месяц: ');
if m2 > m1 then
  print('Ближе к НГ: ', d2, m2)
else if m1 > m2 then
  print('Ближе к НГ: ', d1, m1)
else if m1 = m2 then
  if d2 > d1 then
    print('Ближе к НГ: ', d2, m2)
  else if d1 > d2 then
    print('Ближе к НГ: ', d1, m1)
  else if d1 = d2 then
    print('Ближе к НГ: ', d1, m1);

//Сколько дней в году?
writeln(newline);
var year2 := ReadInteger('Задание 4. Введите год: ');
Assert(year2 > 0);
if (year2 mod 4 = 0) and ((year2 mod 400 = 0) or not (year2 mod 100 = 0)) then
  print('Дней в году: 366')
else print('Дней в году: 365');

//Суммарное количество всех дней между двумя годами
writeln(newline);
var (y1, y2) := ReadInteger2('Задание 5. Введите 2 года: ');
var sum := 0;
if y1 > y2 then
  (y1, y2) := (y2, y1);
for var i := y1 to y2 do
if (i mod 4 = 0) and ((i mod 400 = 0) or not (i mod 100 = 0)) then
sum += 366
else sum += 365;
println('Суммарное количество всех дней: ', sum);

//Сколько секунд в данном кол-ве часов?
writeln(newline);
var hours := ReadInteger('Задание 6. Введите количество часов: ');
print(hours * 3600);

//Совпадение года с годом апокалипсиса
writeln(newline);
var year3 := ReadInteger('Задание 7. Введите год: ');
print((year3 = 1992) or (year3 = 2005) or (year3 = 2011))
end.
