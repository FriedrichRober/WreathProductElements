# Global variables are defined outside of this file
# str           ID                      : identifier of this example
# rec(K, H)     groups                  : groups K and H
# elm           g, h                    : random elements
LoadPackage("WreathProductElements");;
G := WreathProduct(groups.K, groups.H);;
iso := IsomorphismToGenericWreathProduct(G);;
W := Range(iso);;
fileOut := Concatenation("./out_timingsWithPackage/", ID, ".csv");;
w := g ^ iso;;
ProfileFunctions(WPE_Centraliser);;
WPE_Centraliser(W, w);;
prof := ProfileInfo([WPE_Centraliser], 1, 0);;
UnprofileFunctions(WPE_Centraliser);;
ClearProfile();;
AppendTo(fileOut, prof.ttim, "\n");;
