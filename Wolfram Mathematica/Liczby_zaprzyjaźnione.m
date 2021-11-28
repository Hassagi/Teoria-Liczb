(* funkcja zwracająca wszystkie pary liczb zaprzyjaźnionych z przedziału [2, n] *)

zaprzyjaźnione[n_] := (l = {};
  For[i = 2, i <= n, i++, 
   For[j = 1, j < i, j++, 
    If[DivisorSigma[1, i] - i == j && DivisorSigma[1, j] - j == i, 
     AppendTo[l, {i, j}]]]]; Return[l])
