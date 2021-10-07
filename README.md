# pi_calulation
Pi calulation that uses Archimedes method

%% run erlang   => erl -mnesia dir '"/tmp/mnesia"'
%% compile c(pi_utr). then run pi_utr:pi_iterations().
%% it calculates PI according to Archimedes method.

%% Dela cirkeln 6 delar, gör liksidig triangel med sida =1 Dmeter=1 => pi = 3
%% Dela en sida med hälften ger enl. pythagoras sats,
%% kort sida 0,5 hypo 1 och lång kateter = sqrt(1²-0,5²) => 0,8660...
%% 1-0,8660 är kvar ut till cirkeln och ny hyp = sqrt((1-0,8660)²+0,5²) och
%% pi = 12 * detta värde.
%% oändligt många iterationer ger pi. Archimedes gjorde motsvarande 4

