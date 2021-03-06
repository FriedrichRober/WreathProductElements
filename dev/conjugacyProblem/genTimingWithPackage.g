# Global variables are defined outside of this file
# str           ID                      : identifier of this example
# rec(K, H)     groups                  : groups K and H
# elm           g, h                    : random elements
LoadPackage("WreathProductElements");;
G := WreathProduct(groups.K, groups.H);;
iso := IsomorphismToGenericWreathProduct(G);;
fileOut := Concatenation("./out_timingsWithPackage/", ID, ".csv");;
w := g ^ iso;;
v := (g ^ h) ^ iso;;
ProfileFunctions(WPE_RepresentativeAction);;
WPE_RepresentativeAction(w, v);;
prof := ProfileInfo([WPE_RepresentativeAction], 1, 0);;
UnprofileFunctions(WPE_RepresentativeAction);;
ClearProfile();;
AppendTo(fileOut, prof.ttim, "\n");;
