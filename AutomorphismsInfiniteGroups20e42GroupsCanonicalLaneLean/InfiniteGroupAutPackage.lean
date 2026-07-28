import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure InfiniteGroupAutPackage where
  group : Type u
  automorphismGroup : Type v
  infiniteOrderElement : Prop
  innerAutomorphism : Prop
  outerAutomorphismGroup : Prop
  structureTheoryClosed : Prop

structure InfiniteGroupAutEvidence (P : InfiniteGroupAutPackage) where
  infiniteOrderElementClosed : P.infiniteOrderElement
  innerAutomorphismClosed : P.innerAutomorphism
  outerAutomorphismGroupClosed : P.outerAutomorphismGroup
  structureTheoryClosedClosed : P.structureTheoryClosed

def InfiniteGroupAutClosed (P : InfiniteGroupAutPackage) : Prop :=
  P.infiniteOrderElement ∧ P.innerAutomorphism ∧ P.outerAutomorphismGroup ∧ P.structureTheoryClosed

theorem infinite_group_aut_closed_from_evidence (P : InfiniteGroupAutPackage) (E : InfiniteGroupAutEvidence P) :
    InfiniteGroupAutClosed P := by
  exact And.intro E.infiniteOrderElementClosed (And.intro E.innerAutomorphismClosed (And.intro E.outerAutomorphismGroupClosed E.structureTheoryClosedClosed))

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse