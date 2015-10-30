% Entered on Nov 10, 2007
\version "2.11.34"
%#(set-global-staff-size 17) 

\paper {
%	#(set-paper-size "a4")
%	#(set-paper-size "letter")
	left-margin = 0.75 \in
	line-width = 7.0 \in
	between-system-padding = #2.0
	between-system-space = #2.0
	ragged-last-bottom = ##t 
	ragged-bottom = ##f
}

\header {
	title = "Nº. 43. Danish Air."
	subtitle = ""
	subsubtitle = "60 National Airs of Different Nations"
	composer = \markup{\column \right-align 
	{\line {Felix Horetzky} 1796-1870}}
	meter = ""
% MUTOPIA
 mutopiatitle = "Nº. 43. Danish Air."
 mutopiacomposer = "HoretzkyF"
 mutopiapoet = ""
 mutopiaopus = ""
 mutopiainstrument = "Classical Guitar"
 date = "unk"
 source = "Boije collection #268"
 style = "Classical"
 copyright = "Public Domain"
 maintainer = "Stan Sanderson"
 moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"
 footer = "Mutopia-2007/11/14-1140"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Source & comments
%%	
%%  	Felix Horetzky was born in Horyszów Ruski, Poland, January 1, 1796.
%%	Little is known about he came to the guitar. He traveled to Vienna
%%	to study under master guitarrist, Mauro Giuliani. He traveled
%%  	extensively in Europe as a concert performer and teacher. He wrote
%%  	between 100 and 150 pieces for the guitar. He died in Edinburgh
%%  	on October 6, 1870.
%%
%%	This piece is from #268, "60 National Airs of Different Nations",
%%	in the Boije collection and is in the public domain.
%%	
%%	<http://www.muslib.se/ebibliotek/boije/>
%%	Publisher: Chappell (London), no date given.
%%
%%	Carl Boije (1849-1923) was an amateur guitarist whose vast collection
%%	was donated to the State Library of Sweden after his death.
%%
%%	The dynamic markings for the most part follow the original score; obvious
%%	notation errors have been corrected.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"

%%%% shortcuts

dol = \markup { \smaller\italic "dolce."}
cres = \markup{\smaller\italic"cresc:"}
cress = \markup{\tiny\smaller\italic"cresc:"}
espr = \markup{\smaller\italic"espres:"}
rit = \markup{\smaller\italic"ritard:"}
atem = \markup{\smaller\italic"a tempo:"}
smz = \markup{\smaller\italic"smorz:"} % smorzando
showTup = { \override TupletNumber #'transparent = ##f
		\override TupletBracket #'transparent = ##f }
hideTup = { \override TupletNumber #'transparent = ##t
		\override TupletBracket #'transparent = ##t }
seg = \markup {\smaller \smaller \musicglyph #"scripts.segno"}
cod = \markup {\smaller \vcenter "to" \hspace #0.7 \smaller \vcenter \musicglyph #"scripts.coda"}
toseg = \markup { \bold \vcenter "to" \hspace #0.7 \vcenter \smaller \musicglyph #"scripts.segno" }
fin = \markup {\smaller \smaller \bold \italic "Fine."}		
I = \once \override NoteColumn #'ignore-collision = ##t
sdu = \once \override Stem #'direction = #UP
sdd = \once \override Stem #'direction = #DOWN

%% End shortcuts


%%%%%%%%%%
%% Reminders
%
%    \once \override DynamicText #'extra-offset = #'(-3.75 . 5.5)
%    \once \override TextScript #'extra-offset = #'( 0.8 . -2.3 )
%    \once \override Stem #'length-fraction = #0.8
%    \once \override Beam #'positions = #'(-2.2 . -3.0)
%
%%%%%%%%%%

upper = \relative c''{
	\set Staff.instrumentName=\markup{ \center-align 
	{\smaller\bold "Nº. 43.  " \smaller\smaller\italic "LARGETTO  " 
	\tiny\smaller\italic"GRAZIOSO."}}
	\repeat volta 2 {
		\partial 4*2 g4 g8. g16 |
		<c e,>4 <c g> d8[ e <f b,> <d g,>] |
		<g c,>4 e8 c g4 g8 g |
		\I c4 <d e,>8 <e g,> g[ f d8. e16] |
		c2
	}
	g'4 g8 g |
	<g e>2 g8[ f e d] |
	a'4 g g <g c,>8 <g b,> |
	\I <g c,>4 \grace{d16[( c b])} <d e,>8 <e g,> e[ d c a] |
	g4 r <a' g> <a fs>8 <a fs> |
	<d f,>4 <g, e> <f e> f8 f |
	<b d,>4 e,8 e d4 <d b> |
	g <c, a> <f b,> <e c> |
	d2\fermata  g,4 g8. g16 |
	<c e,>4 <c g> d8[ e <f b,> <d g,>] |
	<g c,>4 e8 c g4 g8 g |
	\I c4 <d e,>8 <e g,> g[ f d8. e16] |
	c2
}


lower = \relative c' { 
	\override Staff.NoteCollision 
	#'merge-differently-headed = ##t
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
		\partial 4*2 <f b,>4 <f g,> |
		c e <g b,> g, |
		e'8 g c, g' <f d>4 <f b,>8 <f g,> |
		<<{\override Beam #'positions = #'(-0.2 . 0.7)	e8 g_\dol s4 }\\
			{c,2 }>>
			<b' g d>4 <b f g,> |
		<e, c>2 
	}
	\once \override DynamicText #'extra-offset = #'(-2.0 . 1.5 )
	<b' f>8_\p g <c a> <d b> |
	c2 <b g>4 <b g> |
	<e c>8[ g, <e' c> g,] 
	\once \override DynamicText #'extra-offset = #'(-2.5 . 2.5 )
		<b g f,>8[_\f g, a b] |
		<<{\override Beam #'positions = #'(-0.2 . 0.7)	e8 g_\dol s4 }\\
		{c,4 s}>>
		<fs d>4 <fs d> |
	g,4 r cs' d8 c |
	b4 c d <d b>8 <d a> |
	gs,4 <cs a>8 <cs g> <c fs,>4 g8 f |
	<bf e,>4 f d8[ g, c fs] |
	<b g>2_\fermata  <f b,>4 <f g,> |
	c e <g b,> g, |
	e'8 g c, g' <f d>4 <f b,>8 <f g,> |
	<<{\override Beam #'positions = #'(-0.2 . 0.7)	e8 g_\dol s4 }\\
		{c,2 }>>
		<b' g d>4 <b f g,> |
	<e, c>2 
}

staffClassicalGuitar = \new Staff  {
		\time 2/2
		\key c \major
		\set Staff.connectArpeggios = ##t
		\set Staff.midiInstrument="acoustic guitar (nylon)"
		<<
			\new Voice = A { \voiceOne  \upper }
			\new Voice = C { \voiceFour  \lower }
		>>
		\bar "||"   %%  "|."
}

\score { 
		<<
			\staffClassicalGuitar
		>>
		}
		
\layout  {\context {
   \Staff
   \consists Span_arpeggio_engraver
 } }

\score {
	\unfoldRepeats
	\staffClassicalGuitar
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
		\context {
			\Voice
			\remove "Dynamic_performer"
	    }
    }
}
