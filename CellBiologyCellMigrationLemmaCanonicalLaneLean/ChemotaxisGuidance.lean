import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ChemotaxisGuidancePackage where
  gradientSensing : Prop
  receptorPolarization : Prop
  signalAmplification : Prop
  directionalPersistence : Prop

structure ChemotaxisGuidanceEvidence (P : ChemotaxisGuidancePackage) where
  gradientSensingClosed : P.gradientSensing
  receptorPolarizationClosed : P.receptorPolarization
  signalAmplificationClosed : P.signalAmplification
  directionalPersistenceClosed : P.directionalPersistence

def ChemotaxisGuidanceClosed (P : ChemotaxisGuidancePackage) : Prop :=
  P.gradientSensing ∧ P.receptorPolarization ∧ P.signalAmplification ∧ P.directionalPersistence

theorem chemotaxis_guidance_closed_from_evidence (P : ChemotaxisGuidancePackage) (E : ChemotaxisGuidanceEvidence P) :
    ChemotaxisGuidanceClosed P := by
  exact And.intro E.gradientSensingClosed
    (And.intro E.receptorPolarizationClosed
      (And.intro E.signalAmplificationClosed E.directionalPersistenceClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse