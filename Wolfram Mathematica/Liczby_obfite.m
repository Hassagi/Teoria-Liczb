(* funkcja zwracająca wszystkie liczby obfite z przedziału [1, n] *)

SumaDzielników[n_] := DivisorSigma[1, n]
Obfitość[n_] := SumaDzielników[n] - 2 n

Obfite[m_] := (L = {};
  For[n = 1, n <= m, n++, If[Obfitość[n] > 0, AppendTo[L, n]]]; 
  Return[L])
