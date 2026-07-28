import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "automorphisms-infinite-groups-20e42-canonical-lane"

def sourceDescription : String :=
  "Automorphisms Infinite Groups 20E42 Groups"

def sourceTheoremBoundary : String :=
  "Classical boundary carried as endpointSatisfied ∨ remainderRecorded"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := sourceTheoremBoundary
  , constrainedStatement := "constrained theorem closure via bridge and gate"
  , certificateLane := "group_constrained"
  , carriedRemainder := "classical boundary remains open outside admissible class"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse