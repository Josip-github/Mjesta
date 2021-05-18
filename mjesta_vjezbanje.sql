# koliko ima redaka u tablici mjesto?
select count(*) from mjesto;

#Pronađi kojoj županiji pripada Ivanić Grad
select * from mjesto where postanskibroj='10310';

#ili drugi način:
select * from mjesto where naziv='Ivanić-Grad';

#Koliko ima mjesta u Dubrovačko-neretvanskoj županiji?
select * from mjesto where naziv='Dubrovnik';

#Dubrovačko-neretvanska županija ima int vrijednost = 19
select * from mjesto where zupanija=19;
#Odgovor: 56 je mjesta u Dubrovačko-neretvanskoj županiji

#ili:
select count(*) from mjesto where zupanija=19;
