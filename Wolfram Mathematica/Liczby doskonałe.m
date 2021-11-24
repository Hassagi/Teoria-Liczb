Doskonała[n_] := (L = {}; m = n; potęga2 = 2;
  While[m > 0, (potęga2 = potęga2*2;
    If[PrimeQ[potęga2 - 1] == True, 
     AppendTo[L, (potęga2 - 1)*(potęga2/2)]; m--])]; Return[L])
