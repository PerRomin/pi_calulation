-module(pi_utr).
%% kör erlang   => erl -mnesia dir '"/tmp/mnesia"'
%% kompilera c(pi_utr). sen kör pi_utr:pi_iterations().
%% denna fil räknar ut pi enl Archimedes metod. 			     %%
%% Dela cirkeln 6 delar, gör liksidig triangel med sida =1 Dmeter=1 => pi = 3%%
%% Dela en sida med hälften ger enl. pythagoras sats,			     %%
%% kort sida 0,5 hypo 1 och lång kateter = sqrt(1²-0,5²) => 0,8660... 	     %%
%% 1-0,8660 är kvar ut till cirkeln och ny hyp = sqrt((1-0,8660)²+0,5²) och  %%
%% pi = 12 * detta värde.    	       	      			       	     %%
%% oändligt många iterationer ger pi. Archimedes gjorde motsvarande 4 	     %%
-export([pi_iterations/0,pi_iterations/1,upph/1]).

sqare(X) ->
    X * X.

upph(N) -> upph(N-1, 2).
upph(0,A) -> A;
upph(N,A) -> upph(N-1, A*2).


hyp(E,C) ->
    math:sqrt(sqare(E)+sqare(C)).

kat(B,C) -> 
    math:sqrt(sqare(B)-sqare(C)).

%% B = sida , C = B/2 , D = ROT(1²-C²) , E = 1-D , F = ROT(E²+C²) %%
pi_it(B) ->
    C = B/2,
    D = kat(1,C),
    E = 1-D,
    F = hyp(E,C),
    F.

pi_iterations(0) -> 3; 
pi_iterations(X) -> pi_iterations(0,X,1).
pi_iterations(N,X,B) when X > N ->
    pi_iterations(N+1,X,pi_it(B));
pi_iterations(N,X,B) when X == N ->
    Pi = B*3*upph(X),
    Pi. 

pi_iterations() ->
    pi_iterations(25).