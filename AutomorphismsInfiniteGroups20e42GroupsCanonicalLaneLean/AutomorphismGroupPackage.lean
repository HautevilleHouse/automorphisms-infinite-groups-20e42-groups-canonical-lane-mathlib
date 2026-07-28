import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure AutomorphismGroupPackage where
  group : Type u
  groupOperation : group → group → group
  identityElement : group
  inverseFunction : group → group
  infinite : Prop
  automorphismGroup : Type v
  automorphismAction : automorphismGroup → group → group
  automorphismGroupIsGroup : Prop
  actionIsAutomorphism : Prop

structure AutomorphismGroupEvidence (G : AutomorphismGroupPackage) where
  infiniteClosed : G.infinite
  automorphismGroupIsGroupClosed : G.automorphismGroupIsGroup
  actionIsAutomorphismClosed : G.actionIsAutomorphism

def AutomorphismGroupClosed (G : AutomorphismGroupPackage) : Prop :=
  G.infinite ∧ G.automorphismGroupIsGroup ∧ G.actionIsAutomorphism

theorem automorphism_group_closed_from_evidence (G : AutomorphismGroupPackage)
    (E : AutomorphismGroupEvidence G) : AutomorphismGroupClosed G := by
  exact And.intro E.infiniteClosed (And.intro E.automorphismGroupIsGroupClosed E.actionIsAutomorphismClosed)

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse