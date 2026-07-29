import CellBiologyCellMigrationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure MigrationSignalingPackage where
  rhoGTPaseActivation : Prop
  racCdc42Balance : Prop
  ptenPi3kOpposition : Prop
  downstreamEffectorPhosphorylation : Prop
  integrinOutsideInSignaling : Prop

structure MigrationSignalingEvidence (S : MigrationSignalingPackage) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  racCdc42BalanceClosed : S.racCdc42Balance
  ptenPi3kOppositionClosed : S.ptenPi3kOpposition
  downstreamEffectorPhosphorylationClosed : S.downstreamEffectorPhosphorylation
  integrinOutsideInSignalingClosed : S.integrinOutsideInSignaling

def MigrationSignalingClosed (S : MigrationSignalingPackage) : Prop :=
  S.rhoGTPaseActivation ∧ S.racCdc42Balance ∧ S.ptenPi3kOpposition ∧
  S.downstreamEffectorPhosphorylation ∧ S.integrinOutsideInSignaling

theorem migration_signaling_closed_from_evidence (S : MigrationSignalingPackage)
    (E : MigrationSignalingEvidence S) : MigrationSignalingClosed S := by
  exact And.intro E.rhoGTPaseActivationClosed
    (And.intro E.racCdc42BalanceClosed
      (And.intro E.ptenPi3kOppositionClosed
        (And.intro E.downstreamEffectorPhosphorylationClosed
          E.integrinOutsideInSignalingClosed)))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse