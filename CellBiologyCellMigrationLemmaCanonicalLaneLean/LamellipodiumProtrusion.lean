import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure LamellipodiumProtrusionPackage where
  actinPolymerizationRate : Prop
  membraneTension : Prop
  adhesionDensity : Prop
  protrusionVelocityField : Prop
  actinPolymerizationRateTerm : actinPolymerizationRate
  membraneTensionTerm : membraneTension
  adhesionDensityTerm : adhesionDensity
  protrusionVelocityFieldTerm : protrusionVelocityField

structure LamellipodiumProtrusionEvidence (L : LamellipodiumProtrusionPackage) where
  actinPolymerizationRateClosed : L.actinPolymerizationRate
  membraneTensionClosed : L.membraneTension
  adhesionDensityClosed : L.adhesionDensity
  protrusionVelocityFieldClosed : L.protrusionVelocityField

def LamellipodiumProtrusionClosed (L : LamellipodiumProtrusionPackage) : Prop :=
  L.actinPolymerizationRate ∧ L.membraneTension ∧ L.adhesionDensity ∧ L.protrusionVelocityField

theorem lamellipodium_protrusion_closed_from_evidence (L : LamellipodiumProtrusionPackage) (E : LamellipodiumProtrusionEvidence L) :
    LamellipodiumProtrusionClosed L := by
  exact And.intro E.actinPolymerizationRateClosed
    (And.intro E.membraneTensionClosed
      (And.intro E.adhesionDensityClosed E.protrusionVelocityFieldClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse
