import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure SignalTransductionPackage where
  chemotacticGradient : Prop
  receptorActivation : Prop
  smallGTPaseSignaling : Prop
  pi3kAktPathway : Prop

def SignalTransductionEvidence (S : SignalTransductionPackage) : Type :=
  { evidence :: 
    chemotacticGradientClosed : S.chemotacticGradient
    receptorActivationClosed : S.receptorActivation
    smallGTPaseSignalingClosed : S.smallGTPaseSignaling
    pi3kAktPathwayClosed : S.pi3kAktPathway
  }

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.chemotacticGradient ∧ S.receptorActivation ∧ S.smallGTPaseSignaling ∧ S.pi3kAktPathway

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.chemotacticGradientClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.smallGTPaseSignalingClosed E.pi3kAktPathwayClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse