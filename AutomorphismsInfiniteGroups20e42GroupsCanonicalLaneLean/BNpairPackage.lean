import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure BNpairPackage where
  group : Type u
  boronNielsenPair : Type v
  parabolicSubgroups : Prop
  bruhatDecomposition : Prop
  weylGroupFinite : Prop
  splitBNpair : Prop
  structureClosed : Prop

structure BNpairEvidence (B : BNpairPackage) where
  parabolicSubgroupsClosed : B.parabolicSubgroups
  bruhatDecompositionClosed : B.bruhatDecomposition
  weylGroupFiniteClosed : B.weylGroupFinite
  splitBNpairClosed : B.splitBNpair
  structureClosedClosed : B.structureClosed

def BNpairClosed (B : BNpairPackage) : Prop :=
  B.parabolicSubgroups ∧ B.bruhatDecomposition ∧ B.weylGroupFinite ∧ B.splitBNpair ∧ B.structureClosed

theorem bnpair_closed_from_evidence (B : BNpairPackage) (E : BNpairEvidence B) :
    BNpairClosed B := by
  exact And.intro E.parabolicSubgroupsClosed (And.intro E.bruhatDecompositionClosed (And.intro E.weylGroupFiniteClosed (And.intro E.splitBNpairClosed E.structureClosedClosed)))

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse