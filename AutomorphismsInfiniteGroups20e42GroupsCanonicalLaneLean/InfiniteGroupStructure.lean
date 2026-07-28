import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.AutomorphismGroupPackage

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure InfiniteGroupStructure {G : AutomorphismGroupPackage} where
  groupGeneratedBy : Prop
  finitelyGenerated : Prop
  simpleGroup : Prop
  semiSimpleGroup : Prop
  bnPairPresent : Prop

structure InfiniteGroupStructureEvidence {G : AutomorphismGroupPackage}
    (S : InfiniteGroupStructure G) where
  groupGeneratedByClosed : S.groupGeneratedBy
  finitelyGeneratedClosed : S.finitelyGenerated
  simpleGroupClosed : S.simpleGroup
  semiSimpleGroupClosed : S.semiSimpleGroup
  bnPairPresentClosed : S.bnPairPresent

def InfiniteGroupStructureClosed {G : AutomorphismGroupPackage}
    (S : InfiniteGroupStructure G) : Prop :=
  S.groupGeneratedBy ∧ S.finitelyGenerated ∧ S.simpleGroup ∧
  S.semiSimpleGroup ∧ S.bnPairPresent

theorem infinite_group_structure_closed_from_evidence {G : AutomorphismGroupPackage}
    (S : InfiniteGroupStructure G) (E : InfiniteGroupStructureEvidence S) :
    InfiniteGroupStructureClosed S := by
  exact And.intro E.groupGeneratedByClosed
    (And.intro E.finitelyGeneratedClosed
      (And.intro E.simpleGroupClosed
        (And.intro E.semiSimpleGroupClosed E.bnPairPresentClosed)))

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse