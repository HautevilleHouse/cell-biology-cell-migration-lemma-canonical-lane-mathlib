import CellBiologyCellMigrationLemmaCanonicalLaneLean.CellMigrationObject

namespace HautevilleHouse
namespace CellBiologyCellMigrationLemmaCanonicalLaneLean

structure LamellipodiaExtensionPackage (O : CellMigrationObject) where
  actinNucleation : Prop
  arp2_3Complex : Prop
  coffilinSevering : Prop
  membraneProtrusion : Prop

structure LamellipodiaExtensionEvidence (O : CellMigrationObject) (L : LamellipodiaExtensionPackage O) where
  actinNucleationClosed : L.actinNucleation
  arp2_3ComplexClosed : L.arp2_3Complex
  coffilinSeveringClosed : L.coffilinSevering
  membraneProtrusionClosed : L.membraneProtrusion

def LamellipodiaExtensionClosed (O : CellMigrationObject) (L : LamellipodiaExtensionPackage O) : Prop :=
  L.actinNucleation ∧ L.arp2_3Complex ∧ L.coffilinSevering ∧ L.membraneProtrusion

theorem lamellipodia_extension_closed_from_evidence (O : CellMigrationObject)
    (L : LamellipodiaExtensionPackage O) (E : LamellipodiaExtensionEvidence O L) :
    LamellipodiaExtensionClosed O L := by
  exact And.intro E.actinNucleationClosed
    (And.intro E.arp2_3ComplexClosed
      (And.intro E.coffilinSeveringClosed E.membraneProtrusionClosed))

end CellBiologyCellMigrationLemmaCanonicalLaneLean
end HautevilleHouse