conecta(inicio, [1,1]).
conecta([1,1] , [2,1]).
conecta([2,1] , [2,2]).
conecta([2,2] , [2,3]).
conecta([2,2] , [3,2]).
conecta([2,3] , [3,3]).
conecta([3,2] , [3,3]).
conecta([3,2] , [4,2]).
%conecta([4,2] , [4,1]).
%conecta([4,2] , [4,3]).
conecta([3,3] , [4,3]).
conecta([4,3] , [4,4]).
%conecta([4,4] , [4,5]).
%conecta([4,5] , [3,5]).
conecta([3,5] , fin).
conectado(Pos1,Pos2) :- conecta(Pos1,Pos2).
conectado(Pos1,Pos2) :- conecta(Pos2,Pos1).
miembro(X,[X|_]).
miembro(X,[_|Y]) :- miembro(X,Y) .
sol :- camino([inicio],Sol),camino([inicio],Sol).
camino([fin|RestoDelCamino],[fin|RestoDelCamino]).
camino([PosActual|RestoDelCamino],Sol) :- conectado(PosActual,PosSiguiente),\+ miembro(PosSiguiente,RestoDelCamino),
    camino([PosSiguiente,PosActual|RestoDelCamino],Sol).




































