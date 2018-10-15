\version "2.19.82"

\header {
  title = "Il est bel et bon"
  composer = "Passereau, um 1540"
}

\layout {
  \context {
    \Voice
    \consists "Ambitus_engraver" % TODO outside staff group bracket
  }
  \context {
    \Score
    %\override NonMusicalPaperColumn.line-break-permission = ##f
    %\override NonMusicalPaperColumn.page-break-permission = ##f
  }
}

mensurstriche = \hide Staff.BarLine

%\transpose e es
\new StaffGroup \with {
  \hide Staff.BarLine
} <<
  \new Staff {
    \clef "violin"
    \key b \minor
    \time 2/2
    \relative e' {
      e8 fis g a b4 b |
      b b b b |
      a fis r2 |
      e8 fis g a b4 b |
      b b b b | \break
      a fis8 fis a4 fis8 fis |
      g4 e e d |
      e2 e'4. d8 |
      cis4 d a b |
      d4. cis8 b4 a |
      b1 | \break
      R1 |
      R1 |
    }
  } \addlyrics {
    Il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re,
    il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re, com -- mè -- re, com --
    mè -- re, mon ma --
    ry. Il es --
    toit deux fem -- mes
    tou -- tes d’un pa --
    ys,
  }
  \new Staff {
    \clef "violin"
    \key b \minor
    \time 2/2
    \relative b {
      R1 |
      b8 cis d e fis4 fis |
      fis fis fis fis |
      g2 fis |
      b,8 cis d e fis4 fis |
      fis fis cis cis8 cis |
      e4 b b b |
      b2 r2 |
      a'4. g8 fis4 g |
      d e g4. fis8 |
      e4 d e2 |
      R1 |
      R1 |
      R1 |
    }
  } \addlyrics {
    Il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re,
    il est bel et bon, bon,
    bon, bon, bon, bon, com --
    mè -- re, mon ma --
    ry.
    Il es -- toit deux
    fem -- mes tou -- tes
    d’un pa -- ys,
  }
  \new Staff {
    \clef "violin_8"
    \key b \minor
    \time 2/2
    \relative e {
      r2 e8 fis g a |
      b4 b d d |
      cis cis a2 |
      b2 b8 a g a |
      b4 b d d |
      cis2 a4 a |
      b4. a8 g4 fis |
      e1 |
      R1 |
      R1 |
      r2 e'4. d8 |
      cis4 d a b |
      d4. cis8 b4 a |
      b2
    }
  } \addlyrics {
    Il est bel et
    bon, bon, bon, bon,
    bon com -- mè --
    re, il est bel et
    bon, bon, bon, bon,
    bon, bon, com --
    mè -- re, mon ma --
    ry. __
    Di -- sans
    l’une à l’au -- tre:
    a -- vez bon ma --
    ry.
  }
  \new Staff {
    \clef "bass"
    \key b \minor
    \time 2/2
    \relative b, {
      r1. % TODO should be R, centered, but that doesn’t support dotted?
      b8 cis d e |
      fis4 fis fis fis |
      e2 b1
      b8 cis d e |
      fis4 fis fis fis |
      e e b b |
      e1 |
      R1 |
      R1 |
      R1 |
      a4. g8 fis4 g |
      d e g4. fis8 |
      e4 d e1
    }
  } \addlyrics {
    Il est bel et
    bon, bon, bon, com --
    mè -- re, __ % TODO this and other extenders should be longer
    il est bel et
    bon, bon, bon, com --
    mè -- re mon ma --
    ry. __
    Di -- sans l’une à
    l’au -- tre: a -- vez
    bon ma -- ry. __
  }
>>
