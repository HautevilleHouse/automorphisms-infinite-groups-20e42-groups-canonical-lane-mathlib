import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure BNPairPackage where
  group : Type u
  (B : group → Prop)
  (N : group → Prop)
  intersectionBN : Prop
  (T : Prop) -- T = B ∩ N
  (W : Type v) -- Weyl group
  (W_as_quotient : Prop)
  (S : Set W) -- generating reflections
  (BN_axioms : Prop)

structure BNPairEvidence (B : BNPairPackage) where
  intersectionBNClosed : B.intersectionBN
  TClosed : B.T
  W_as_quotientClosed : B.W_as_quotient
  BN_axiomsClosed : B.BN_axioms

def BNPairClosed (B : BNPairPackage) : Prop :=
  B.intersectionBN ∧ B.T ∧ B.W_as_quotient ∧ B.BN_axioms

theorem bn_pair_closed_from_evidence (B : BNPairPackage) (E : BNPairEvidence B) :
    BNPairClosed B := by
  exact And.intro E.intersectionBNClosed
    (And.intro E.TClosed
      (And.intro E.W_as_quotientClosed E.BN_axiomsClosed))

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse
