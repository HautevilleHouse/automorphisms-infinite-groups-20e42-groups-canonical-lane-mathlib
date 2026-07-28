import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.BNPair

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure AutomorphismGroupPackage (B : BNPairPackage) where
  automorphism_group : Type u
  action_on_group : automorphism_group → (B.group → B.group)
  preserves_BN_pair : (φ : automorphism_group) → (∀ g, B.B g → B.B (action_on_group φ g)) ∧ (∀ g, B.N g → B.N (action_on_group φ g))
  induced_action_on_Weyl : automorphism_group → (B.W → B.W)
  compatible_with_generators : (φ : automorphism_group) → (∀ s ∈ B.S, induced_action_on_Weyl φ s ∈ B.S)

structure AutomorphismGroupEvidence (B : BNPairPackage) (A : AutomorphismGroupPackage B) where
  preserves_BN_pairClosed : ∀ φ, (∀ g, B.B g → B.B (A.action_on_group φ g)) ∧ (∀ g, B.N g → B.N (A.action_on_group φ g))
  compatible_with_generatorsClosed : ∀ φ, (∀ s ∈ B.S, A.induced_action_on_Weyl φ s ∈ B.S)

def AutomorphismGroupClosed (B : BNPairPackage) (A : AutomorphismGroupPackage B) : Prop :=
  (∀ φ, (∀ g, B.B g → B.B (A.action_on_group φ g)) ∧ (∀ g, B.N g → B.N (A.action_on_group φ g))) ∧
  (∀ φ, (∀ s ∈ B.S, A.induced_action_on_Weyl φ s ∈ B.S))

theorem automorphism_group_closed_from_evidence (B : BNPairPackage) (A : AutomorphismGroupPackage B) (E : AutomorphismGroupEvidence B A) :
    AutomorphismGroupClosed B A := by
  exact And.intro E.preserves_BN_pairClosed E.compatible_with_generatorsClosed

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse
