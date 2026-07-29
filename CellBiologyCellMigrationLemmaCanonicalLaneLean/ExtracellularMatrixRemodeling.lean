import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ExtracellularMatrixRemodelingPackage where
  matrixDegradation : Prop
  matrixDeposition : Prop
  integrinBindingSiteExposure : Prop
  stiffnessFeedback : Prop

structure ExtracellularMatrixRemodelingEvidence (P : ExtracellularMatrixRemodelingPackage) where
  matrixDegradationClosed : P.matrixDegradation
  matrixDepositionClosed : P.matrixDeposition
  integrinBindingSiteExposureClosed : P.integrinBindingSiteExposure
  stiffnessFeedbackClosed : P.stiffnessFeedback

def ExtracellularMatrixRemodelingClosed (P : ExtracellularMatrixRemodelingPackage) : Prop :=
  P.matrixDegradation ∧ P.matrixDeposition ∧ P.integrinBindingSiteExposure ∧ P.stiffnessFeedback

theorem extracellular_matrix_remodeling_closed_from_evidence (P : ExtracellularMatrixRemodelingPackage) (E : ExtracellularMatrixRemodelingEvidence P) :
    ExtracellularMatrixRemodelingClosed P := by
  exact And.intro E.matrixDegradationClosed
    (And.intro E.matrixDepositionClosed
      (And.intro E.integrinBindingSiteExposureClosed E.stiffnessFeedbackClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse