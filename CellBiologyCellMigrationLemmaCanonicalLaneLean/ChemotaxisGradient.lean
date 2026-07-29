import PolarizationPackage

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure ChemotaxisGradientPackage where
  gradientDetected : Prop
  receptorActivation : Prop
  signalTransduction : Prop

structure ChemotaxisGradientEvidence (C : ChemotaxisGradientPackage) where
  gradientDetectedClosed : C.gradientDetected
  receptorActivationClosed : C.receptorActivation
  signalTransductionClosed : C.signalTransduction

def ChemotaxisGradientClosed (C : ChemotaxisGradientPackage) : Prop :=
  C.gradientDetected ∧ C.receptorActivation ∧ C.signalTransduction

theorem chemotaxis_gradient_closed_from_evidence (C : ChemotaxisGradientPackage) (E : ChemotaxisGradientEvidence C) :
    ChemotaxisGradientClosed C := by
  exact And.intro E.gradientDetectedClosed (And.intro E.receptorActivationClosed E.signalTransductionClosed)

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse