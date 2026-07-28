import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.GroupWithBNPair

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure TitsAlternativeState (G : Type u) [Group G] where
  g : G
  subgroupGenerated : Subgroup G := ⟨g⟩
  rankCondition : G has BN-pair of rank ≥ 2
  alternative : subgroupGenerated is virtually solvable ∨ subgroupGenerated contains a free subgroup of rank 2

theorem tits_alternative : ... := by
  sorry

structure TitsAlternativeEvidence where
  proof : ∀ (G : Type u) [Group G], TitsAlternativeState G
  bridgeClosed : bridgeClosed (admittedObject G)
  gateClosed : gateClosed (admissibleClass G)

def TitsAlternativeTheorem : Prop :=
  ∀ (G : Type u) [Group G], TitsAlternativeState G

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse