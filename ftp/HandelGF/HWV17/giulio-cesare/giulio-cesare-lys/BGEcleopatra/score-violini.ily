global = \includeNotes #"global"

\score {
  \instrStaff \markup "Tutti Violini." <<
    \keepWithTag #'partBoth \global
    \clef treble
    \set Score.skipBars = ##t
    \includeNotes #"violini"
  >>
  \header {
    opus = "Aria. Cleopatra: Tutto può donna Vezzosa, s'amorosa"
  }
  \layout { }
}