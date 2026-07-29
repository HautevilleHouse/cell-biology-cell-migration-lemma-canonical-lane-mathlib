import CellMigrationAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure PolarizationPackage where
  frontBackAsymmetry : Prop
  protrusionFormation : Prop
  adhesionTurnover : Prop

structure PolarizationEvidence (P : PolarizationPackage) where
  frontBackAsymmetryClosed : P.frontBackAsymmetry
  protrusionFormationClosed : P.protrusionFormation
  adhesionTurnoverClosed : P.adhesionTurnover

def PolarizationClosed (P : PolarizationPackage) : Prop :=
  P.frontBackAsymmetry ∧ P.protrusionFormation ∧ P.adhesionTurnover

theorem polarization_closed_from_evidence (P : PolarizationPackage) (E : PolarizationEvidence P) :
    PolarizationClosed P := by
  exact And.intro E.frontBackAsymmetryClosed (And.intro E.protrusionFormationClosed E.adhesionTurnoverClosed)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse