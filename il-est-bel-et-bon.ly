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
  \new Staff = "S" {
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
      e,8 fis g a b4 b |
      b b b b |
      a fis r2 |
      e8 fis g a b4 b | \break
      b b b b |
      a fis8 fis a4 fis8 fis |
      g4 e e d |
      e2 e4. e8 |
      b'4 b a a |
      e'2. d4 | \pageBreak
      cis cis b1
      r2 |
      R1 |
      r2 b4. b8 |
      b4 b a fis |
      cis'4. cis8 e4 e |
      d b r2 | \break
      cis4. cis8 e4 e |
      d b r a |
      b4.( a8 g4) fis4.(
      e8) e2 d4 |
      e
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
    Il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re,
    il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re, com -- mè -- re, com --
    mè -- re, mon ma --
    ry. Il ne
    me cou -- rous -- se,
    ne me
    bat aus -- sy. __
    Il fait
    le mé -- na -- ge,
    il donne aux pou --
    lail -- les,
    il donne aux pou --
    lail -- les Et
    je __ prends
    mes plai --
    sirs.
  }
  \new Staff = "A" {
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
      b8 cis d e fis4 fis |
      fis fis fis fis |
      g2 fis |
      b,8 cis d e fis4 fis |
      fis fis cis cis8 cis |
      e4 b b b |
      b2 r2 |
      b4. b8 fis'4 fis |
      e e b'2~ |
      b4 a g g |
      fis1 |
      R1 |
      R1 |
      r2 a4. a8 |
      a4 a g e |
      r2 fis4. g8 |
      a4 a g e |
      r b cis d4.(
      cis8 d4) e2 |
      b4( a b2) |
      b1 |
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
    Il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re,
    il est bel et bon, bon,
    bon, bon, bon, bon, com --
    mè -- re, mon ma --
    ry.
    Il ne
    me cou -- rous -- se,
    ne me
    bat aus -- sy. __
    Il fait
    le mé -- na -- ge,
    il fait
    le mé -- na -- ge
    Et je prends __
    mes
    plai --
    sirs. __
  }
  \new Staff = "T" {
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
      b2 e,8 fis g a |
      b4 b d d |
      cis cis a2 |
      b2 b8 a g a |
      b4 b d d |
      cis2 a4 a |
      b4. a8 g4 fis |
      e1.
      r2 |
      R1 |
      r2 e4. e8 |
      b'4 b a a |
      e'2. d4 |
      cis cis b2 |
      d4. d8 d4 d |
      cis a r2 |
      b4. b8 d4 d |
      cis a r2 |
      r4 b fis'4.( e8) |
      d4.( cis8 b4) a4.(
      g8 fis e) fis2 |
      e r4
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
    Il est bel et
    bon, bon, bon, bon,
    bon com -- mè --
    re, il est bel et
    bon, bon, bon, bon,
    bon, bon, com --
    mè -- re, mon ma --
    ry. __
    Il ne
    me cou -- rous -- se,
    ne me
    bat aus -- sy.
    Il fait le mé --
    na -- ge,
    il fait le mé --
    na -- ge
    Et je __
    prends __ mes __
    plai --
    sirs.
  }
  \new Staff = "B" {
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
      b8 cis d e |
      fis4 fis fis fis |
      e2 b2~ |
      b2 b8 cis d e |
      fis4 fis fis fis |
      e e b b |
      e1.
      r2 |
      R1 |
      R1 |
      b4. b8 fis'4 fis |
      e e b'2.
      a4 g2 |
      g fis |
      r2 e4. e8 |
      g4 g fis d |
      r2 e4. e8 |
      g4 g fis d |
      r b e a, |
      b( cis) b2 |
      e1.
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
    Il est bel et
    bon, bon, bon, com --
    mè -- re, __
    il est bel et
    bon, bon, bon, com --
    mè -- re mon ma --
    ry. __
    Il ne
    me cou -- rous -- se,
    ne me
    bat aus -- sy.
    Il fait
    le mé -- na -- ge
    il fait
    le mé -- na -- ge
    Et je prends
    mes __ plai --
    sirs. __
  }
>>
