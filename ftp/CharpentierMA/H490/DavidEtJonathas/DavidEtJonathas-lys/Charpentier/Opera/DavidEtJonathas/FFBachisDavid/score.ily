\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "achis-david"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { }
}
