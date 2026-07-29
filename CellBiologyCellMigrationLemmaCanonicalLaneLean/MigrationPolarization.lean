import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MigrationPolarizationPackage where
  frontRearAsymmetry : Prop
  lamellipodiaExtension : Prop
  cellBodyRetraction : Prop
  nuclearPositioning : Prop

structure MigrationPolarizationEvidence (M : MigrationPolarizationPackage) where
  frontRearAsymmetryClosed : M.frontRearAsymmetry
  lamellipodiaExtensionClosed : M.lamellipodiaExtension
  cellBodyRetractionClosed : M.cellBodyRetraction
  nuclearPositioningClosed : M.nuclearPositioning

def MigrationPolarizationClosed (M : MigrationPolarizationPackage) : Prop :=
  M.frontRearAsymmetry ∧ M.lamellipodiaExtension ∧ M.cellBodyRetraction ∧ M.nuclearPositioning

theorem migration_polarization_closed_from_evidence (M : MigrationPolarizationPackage) (E : MigrationPolarizationEvidence M) :
    MigrationPolarizationClosed M := by
  exact And.intro E.frontRearAsymmetryClosed
    (And.intro E.lamellipodiaExtensionClosed
      (And.intro E.cellBodyRetractionClosed E.nuclearPositioningClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse