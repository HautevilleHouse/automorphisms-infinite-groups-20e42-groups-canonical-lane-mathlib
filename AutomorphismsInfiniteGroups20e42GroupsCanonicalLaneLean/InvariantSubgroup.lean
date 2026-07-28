import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure InvariantSubgroupPackage {G : InfiniteGroupStructurePackage}
    (A : AutomorphismGroupPackage G) where
  subgroup : Set G.carrier
  isSubgroup : Subgroup G.carrier subgroup
  invariantUnderAutomorphisms : ∀ (φ : A.carrier), ∀ (x : G.carrier), x ∈ subgroup → A.action φ x ∈ subgroup
  classification : Prop

structure InvariantSubgroupEvidence {G : InfiniteGroupStructurePackage}
    {A : AutomorphismGroupPackage G} (I : InvariantSubgroupPackage A) where
  isSubgroupClosed : Subgroup G.carrier I.subgroup
  invariantUnderAutomorphismsClosed : ∀ (φ : A.carrier), ∀ (x : G.carrier), x ∈ I.subgroup → A.action φ x ∈ I.subgroup
  classificationClosed : I.classification

def InvariantSubgroupClosed {G : InfiniteGroupStructurePackage}
    {A : AutomorphismGroupPackage G} (I : InvariantSubgroupPackage A) : Prop :=
  Subgroup G.carrier I.subgroup ∧ (∀ (φ : A.carrier), ∀ (x : G.carrier), x ∈ I.subgroup → A.action φ x ∈ I.subgroup) ∧ I.classification

theorem invariant_subgroup_closed_from_evidence {G : InfiniteGroupStructurePackage}
    {A : AutomorphismGroupPackage G} (I : InvariantSubgroupPackage A)
    (E : InvariantSubgroupEvidence I) : InvariantSubgroupClosed I := by
  exact And.intro E.isSubgroupClosed (And.intro E.invariantUnderAutomorphismsClosed E.classificationClosed)

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse