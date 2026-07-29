import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure PolarizationPackage where
  frontRearPolarity : Prop
  lamellipodiumFormation : Prop
  filopodiumExtension : Prop
  membraneProtrusion : Prop

structure PolarizationEvidence (P : PolarizationPackage) where
  frontRearPolarityClosed : P.frontRearPolarity
  lamellipodiumFormationClosed : P.lamellipodiumFormation
  filopodiumExtensionClosed : P.filopodiumExtension
  membraneProtrusionClosed : P.membraneProtrusion

def PolarizationClosed (P : PolarizationPackage) : Prop :=
  P.frontRearPolarity ∧ P.lamellipodiumFormation ∧ P.filopodiumExtension ∧ P.membraneProtrusion

theorem polarization_closed_from_evidence (P : PolarizationPackage) (E : PolarizationEvidence P) :
    PolarizationClosed P := by
  exact And.intro E.frontRearPolarityClosed
    (And.intro E.lamellipodiumFormationClosed
      (And.intro E.filopodiumExtensionClosed E.membraneProtrusionClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse