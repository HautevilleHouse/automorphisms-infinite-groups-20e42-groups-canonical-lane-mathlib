import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure BNPairGroup where
  G : Type u
  B : Set G
  N : Set G
  S : Set G
  BNpairAxions : Prop

structure AdmissibleClass where
  object : BNPairGroup
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse