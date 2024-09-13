% Ideas:
% ===============
% Predators
% Preys
% Mammal
% Jobs - Farmer, Cop, Tax Advisor, Astronaut, Hillbilly, Mayor, Bank Dealer
% Ecosystems - Tundra Town, Bunny Burrow, Savanna Central, Sahara Square, Rainforest District, Little Rodentia
% Locations - Zootopia Police Department, Department of Mammal Vehicles, Tujunga, Mafia House, Junior Ranger Scouts, City Hall
% 
species(judy_hopps, bunny).
species(nick_wilde, fox).
species(bellwether, sheep).
species(lionheart, lion).
species(bogo, buffalo).
species(mr_big, mouse).
species(fru_fru, mouse).
species(judy, mouse). % baby of fru_fru, she said that she is naming her judy
species(flash, sloth).
species(clawhauser, cheetah).
species(renato_manchas, puma).
species(koslov, polar_bear).
species(raymond, polar_bear).
species(renato_manchas, polar_bear).
species(ice_cream_worker, elephant).
species(bonnie_hopps, bunny).
species(stu_hopps, bunny).
species(wolf_giard, wolf).

predator(fox).
predator(cheetah).
predator(lion).
predator(puma).
predator(polar_bear).

job(judy_hopps, police_officer).
job(nick_wilde, police_officer).
job(bogo, police_officer).
job(clawhauser, police_officer).
job(lionheart, mayor).
job(bellwether, assistant).
job(mr_big, mafia_boss).
job(bonnie_hopps, farmer).
job(stu_hopps, farmer).
job(kevin, tundra_town).
job(raymond, tundra_town).
job(koslov, tundra_town).

newbie(nick_wilde, police_officer).

job_location(police_officer, city_hall).
job_location(mayor, city_hall).
job_location(assistant_mayor, city_hall).
job_location(farmer, bunny_burrow).
job_location(mafia, tundra_town).

friends(judy_hopps, nick_wilde).
friends(nick_wilde, judy_hopps).
friends(bellwether, lionheart).
friends(lionheart, bellwether).
friends(mr_big, judy_hopps).
friends(judy_hopps, mr_big).
friends(fru_fru, judy_hopps).
friends(judy_hopps, fru_fru).
friends(judy_hopps, clawhauser).
friends(judy_hopps, bogo).
friends(nick_wilde, flash).

ecosystems(tundra_town).
ecosystems(bunny_burrow).
ecosystems(savannah_central).
ecosystems(sahara_square).
ecosystems(rainforest_district).
ecosystems(little_rodentia).

parent(mr_big, fru_fru).
parent(fru_fru, judy).
parent(bonnie_hopps, judy_hopps).
parent(stu_hopps, judy_hopps).

criminal(nick_wilde).
criminal(lionheart).
criminal(bellwether).
criminal(mr_big).
criminal(kevin).
criminal(raymond).
criminal(koslov).
criminal(flash).
criminal(ice_cream_worker).

works_for(judy_hopps, bogo).
works_for(clawhauser, bogo).
works_for(nick_wilde, bogo).
works_for(kevin, mr_big).
works_for(raymond, mr_big).
works_for(koslov, mr_big).
works_for(renato_manchas, mr_big).
works_for(bellwether, lionheart).

can_swim(judy_hopps).
can_swim(nick_wilde).

betrayal(bellwether, lionheart).
betrayal(judy_hopps, nick_wilde).

forgiveness(nick_wilde, judy_hopps).

employs(mr_big, kevin).
employs(mr_big, raymond).
employs(mr_big, koslov).
employs(mr_big, renato_manchas).
employs(lionheart, bellwether).
employs(bogo, judy_hopps).
employs(bogo, nick_wilde).
employs(bogo, clawhauser).

% literally, all animals in the movie are mammals
mammal(X) :- species(X, _). 

% places that are not cold basically
warm_biome(X) :- 
    is(X,zootopia); is(X, bunny_burrow); is(X, sahara_square);  is(X, little_rodentia); is(X, rainforest_district).

% literally the only cold biome
cold_biome(X) :- 
    is(X, tundra_town).

% if not friends and they have a friend in common; they can be friends
potential_friend(X,Y) :- not(friends(X, Y)), friends(X, Z), friends(Y, Z).

% fast animals
fast(X)  :- species(X, cheetah), species(X, bunny), species(X, fox), species(X, puma).
slow(X) :- species(X, sloth).

% according to the movie, predators could turn savage
potential_savage(X) :- predator(X).

% definition of grandpa
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% mafia member
mafia_member(X) :- works_for(X,  mr_big).

% partners
partners(X, Y) :- is(X, judy_hopps), is(Y, nick_wilde).

% law enforcer
law_enforcer(X) :- works_for(X, bogo); job(X, police_officer).

% more description to animals.
prey(X) :- not(predator(X)). % prey(X) :- \+(predator(X)).
savage(X) :- predator(X).

% characters that escaped through toilet.

escape_toilet(X) :- species(X, bunny); species(X, fox), !.
escape_toilet(X) :- species(judy_hopps, X); species(nick_wilde, X), !.

% government official
goverment(X) :- job(X, Y), job_location(Y, city_hall).

% xd, basically animals that work on warm or cold places
team_calor(X) :- job(X, Y), job_location(Y, Z), warm_biome(Z).
team_frio(X) :- job(X, Y), job_location(Y, Z), cold_biome(Z).

% trust
trusts(X, Y) :- not(betrayal(X,Y)). % trusts(X, Y) :- \+(betrayal(X,Y)).
trusts(X, Y) :- betrayal(X, Y), forgiveness(Y, X).

% parking duty
parking_duty(X) :- job(X, police_officer), newbie(X, police_officer).

% boss
boss(X) :- employs(X, _).

% Howlers
howler(X) :- species(X, wolf).