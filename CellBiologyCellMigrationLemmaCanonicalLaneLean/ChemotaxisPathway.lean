import canonicalLaneMathlib.AdmissibleClass

/-!
# Chemotaxis Signaling Pathway Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ChemotaxisPathwayPackage where
  gradientSensing : Prop
  signalTransduction : Prop
  polarityEstablishment : Prop
  directionalPersistence : Prop

structure ChemotaxisPathwayEvidence (C : ChemotaxisPathwayPackage) where
  gradientSensingClosed : C.gradientSensing
  signalTransductionClosed : C.signalTransduction
  polarityEstablishmentClosed : C.polarityEstablishment
  directionalPersistenceClosed : C.directionalPersistence

def ChemotaxisPathwayClosed (C : ChemotaxisPathwayPackage) : Prop :=
  C.gradientSensing ∧ C.signalTransduction ∧ C.polarityEstablishment ∧ C.directionalPersistence

theorem chemotaxis_pathway_closed_from_evidence
    (C : ChemotaxisPathwayPackage) (E : ChemotaxisPathwayEvidence C) :
    ChemotaxisPathwayClosed C := by
  exact And.intro E.gradientSensingClosed
    (And.intro E.signalTransductionClosed
      (And.intro E.polarityEstablishmentClosed E.directionalPersistenceClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse