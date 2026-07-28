import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.InfiniteGroupStructure

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure AutomorphismActionClosure {G : AutomorphismGroupPackage}
    {S : InfiniteGroupStructure G} where
  actionFaithful : Prop
  actionTransitive : Prop
  actionPrimitive : Prop
  fixedPointsClassified : Prop

structure AutomorphismActionClosureEvidence {G : AutomorphismGroupPackage}
    {S : InfiniteGroupStructure G} (C : AutomorphismActionClosure S) where
  actionFaithfulClosed : C.actionFaithful
  actionTransitiveClosed : C.actionTransitive
  actionPrimitiveClosed : C.actionPrimitive
  fixedPointsClassifiedClosed : C.fixedPointsClassified

def AutomorphismActionClosureClosed {G : AutomorphismGroupPackage}
    {S : InfiniteGroupStructure G} (C : AutomorphismActionClosure S) : Prop :=
  C.actionFaithful ∧ C.actionTransitive ∧ C.actionPrimitive ∧ C.fixedPointsClassified

theorem automorphism_action_closure_closed_from_evidence {G : AutomorphismGroupPackage}
    {S : InfiniteGroupStructure G} (C : AutomorphismActionClosure S)
    (E : AutomorphismActionClosureEvidence C) : AutomorphismActionClosureClosed C := by
  exact And.intro E.actionFaithfulClosed
    (And.intro E.actionTransitiveClosed
      (And.intro E.actionPrimitiveClosed E.fixedPointsClassifiedClosed))

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse