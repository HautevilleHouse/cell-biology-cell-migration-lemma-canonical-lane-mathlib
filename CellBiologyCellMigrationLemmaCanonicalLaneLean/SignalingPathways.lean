import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure SignalingPathwaysPackage where
  rhoGTPaseModule : Prop
  racGTPaseModule : Prop
  cdc42GTPaseModule : Prop
  pI3KModule : Prop
  mAPKModule : Prop
  calciumSignaling : Prop

structure SignalingPathwaysEvidence (S : SignalingPathwaysPackage) where
  rhoGTPaseModuleClosed : S.rhoGTPaseModule
  racGTPaseModuleClosed : S.racGTPaseModule
  cdc42GTPaseModuleClosed : S.cdc42GTPaseModule
  pI3KModuleClosed : S.pI3KModule
  mAPKModuleClosed : S.mAPKModule
  calciumSignalingClosed : S.calciumSignaling

def SignalingPathwaysClosed (S : SignalingPathwaysPackage) : Prop :=
  S.rhoGTPaseModule ∧ S.racGTPaseModule ∧ S.cdc42GTPaseModule ∧ S.pI3KModule ∧ S.mAPKModule ∧ S.calciumSignaling

theorem signaling_pathways_closed_from_evidence (S : SignalingPathwaysPackage) (E : SignalingPathwaysEvidence S) :
    SignalingPathwaysClosed S := by
  exact And.intro E.rhoGTPaseModuleClosed
    (And.intro E.racGTPaseModuleClosed
      (And.intro E.cdc42GTPaseModuleClosed
        (And.intro E.pI3KModuleClosed
          (And.intro E.mAPKModuleClosed E.calciumSignalingClosed))))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse