# koliko ima redaka u tablici mjesto?
select count(*) from mjesto;

#Pronađi kojoj županiji pripada Ivanić Grad
select * from mjesto where postanskibroj='10310';

#ili drugi način:
select * from mjesto where naziv='Ivanić-Grad';