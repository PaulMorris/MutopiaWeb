\version "2.10.3"

\include "violin.ly"
\include "pianoone.ly"
\include "pianotwo.ly"

\header {
  title = "Violin Sonata No. 7 in C Minor - Opus 30 No. 2"
  subtitle = "1st Movement"
  composer = "Ludwig van Beethoven"
  mutopiatitle = "Violin Sonata No. 7 in C Minor, 1st Movement: Allegro con brio"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Violin"
  mutopiaopus = "Op. 30, No. 2"
  date = "1802"
  source = "Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/March/29"
  version = "2.10.3"
 footer = "Mutopia-2007/03/30-945"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {

 <<

 \context Staff = "one" {
 \violin
 }

 \context PianoStaff <<

 \context Staff = "two" {
 \pianoone
 }

 \context Staff = "three" {
 \pianotwo
 }
>>

 >>

 \layout { }

 \midi { }

}
