import canonicalLaneMathlib.AdmissibleClass
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.BNPair
import AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean.CoxeterSystem

namespace HautevilleHouse
namespace AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean

structure Building (G : Type u) where
  chambers : Set (Set G)
  adjacency : chambers → chambers → Prop
  galleryConnected : Prop
  apartmentType : CoxeterSystem
  buildingAxioms : Prop

structure BuildingEvidence (B : Building G) where
  galleryConnectedClosed : B.galleryConnected
  buildingAxiomsClosed : B.buildingAxioms

def BuildingClosed (B : Building G) : Prop :=
  B.galleryConnected ∧ B.buildingAxioms

theorem building_closed_from_evidence (B : Building G) (E : BuildingEvidence B) : BuildingClosed B :=
  And.intro E.galleryConnectedClosed E.buildingAxiomsClosed

end AutomorphismsInfiniteGroups20e42GroupsCanonicalLaneLean
end HautevilleHouse