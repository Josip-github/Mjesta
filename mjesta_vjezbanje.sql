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

#Preimenuj stupac naziv u grad za sve gradove iz zagrebačke županije
select zupanija,naziv as grad from mjesto where zupanija=1;

#odaberi sva mjesta koja nisu u Zagrebu i Zagrebačkoj županiji; logički operator !
select * from mjesto where zupanija!=1 and zupanija!=21;

#odaberi sve gradove iz pož-sl i spl-dalm županije
select * from mjesto where naziv='Split'; #zupanija=17
select * from mjesto where naziv='Požega'; #zupanija 11

#in
select zupanija, naziv as grad from mjesto where zupanija in(11,17);

#Odaberi sva mjesta koja u sebi sadrže "ra"
select * from mjesto where naziv like '%ra%';

#Odaberi sva mjesta koja počinju s "top"
select * from mjesto where naziv like 'top%';

#Odaberi sva mjesta koja završavaju s "ić"
select * from mjesto where naziv like '%ić';

#update
update mjesto set naziv='Kloštar' where naziv='Kloštar Ivanić';
select * from mjesto where zupanija=1;

update mjesto set naziv='Graberje' where naziv like 'Gra%';
select * from mjesto where naziv like 'Gra%';

