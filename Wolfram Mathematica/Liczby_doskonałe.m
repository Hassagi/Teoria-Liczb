(* Funkcja sprawdzająca czy podana liczba jest doskonała sposób 1 *)

CzyDoskonała1[n_] := (Suma = 0;
  For[i = 1, i <= n/2, i++, If[Mod[n, i] == 0, Suma = Suma + i]];
    If[Suma == n, Return[True], Return[False]])

(* Funkcja sprawdzająca czy podana liczba jest doskonała sposób 2 *)

CzyDoskonała2[n_] := (p = Sqrt[n]; Suma = 1;
  For[i = 2, i <= p, i++, If[Mod[n, i] == 0, Suma = Suma + i + n/i]];
    If[Sqrt[n] - Floor[Sqrt[n]] == 0, Suma = Suma - Sqrt[n]];
      If[Suma == n, Return[True], Return[False]])
      
(* Porównanie czasów działania obu metod *)

Print[Timing[CzyDoskonała1[33550336]], " ",Timing[CzyDoskonała2[33550336]]]

(* Funkcja zwracająca n początkowych liczb doskonałych *)

Doskonała[n_] := (L = {}; m = n; potęga2 = 2;
  While[m > 0, (potęga2 = potęga2*2;
    If[PrimeQ[potęga2 - 1] == True, 
     AppendTo[L, (potęga2 - 1)*(potęga2/2)]; m--])]; Return[L])
