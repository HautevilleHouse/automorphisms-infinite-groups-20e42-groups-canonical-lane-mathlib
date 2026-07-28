import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure BNPar where
  B : Subgroup G
  N : Subgroup G
  intersection : Subgroup G := B ⊓ N
  normalInN : intersection ◁ N
  unionGenerates : closure (B ∪ N) = ⊤
  doubleCosetCondition : ∀ w ∈ N / intersection, B * w * B ∪ B * w⁻¹ * B ⊆ B * (w * N) * B

structure GroupWithBNPair (G : Type u) [Group G] where
  bnPair : BNPar G
  rank : Nat
  irreducible : Prop
  spherical : Prop
  automorphismGroup : Type v
  automorphismGroupInst : Group automorphismGroup
  innerAutomorphisms : Subgroup automorphismGroup
  conclusion : groupHasBNPair

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse