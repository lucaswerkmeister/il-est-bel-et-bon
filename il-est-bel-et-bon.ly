\version "2.19.82"

\header {
  title = "Il est bel et bon"
  composer = "Passereau, um 1540"
  tagline = ##f
}

#(set-global-staff-size 16)

\layout {
  \context {
    \Staff
    \consists "Ambitus_engraver" % TODO outside staff group bracket
  }
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #-1
  }
}

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  indent = #0
}

mensurstriche = \hide Staff.BarLine

parenSharp = \markup { \small \concat { \musicglyph "accidentals.leftparen" \musicglyph "accidentals.sharp" \musicglyph "accidentals.rightparen" } }
Fine = \markup { \text \large \italic Fine }

%\transpose e es
\new StaffGroup \with {
  \hide Staff.BarLine
  \autoBeamOff
} <<
  % TODO for the parenthesized repeats at the beginning,
  % a) the parenthesis should span the whole duration of the note, including the tie, and
  % b) the ties at the beginning and end should be longer
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
      g4 e e d^\parenSharp |
      \set Score.repeatCommands = #`((volta ,Fine))
      e1 | \once \undo \hide StaffGroup.BarLine \bar "|."
      \set Score.currentBarNumber = #8
      \set Score.repeatCommands = #'((volta #f) (volta "1"))
      %\set Score.voltaSpannerDuration = #(ly:make-moment 2/4)
      e2 e'4. d8 |
      \set Score.repeatCommands = #'((volta #f))
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
      g4 e e d^\parenSharp |
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
      e8) e2 d4^\parenSharp |
      e e b'2.
      g4 b4. cis8 |
      d2 a~ | \break
      a r4 e |
      b'2. g4 |
      b4. cis8 d2 |
      a r4 b |
      cis cis b4. a8 |
      g2 fis | \break
      r4 fis b a8 fis |
      g4 fis8 a b4 a8 fis |
      g4 fis8 a b4 a8 fis |
      g4 fis8 a b4 a8 fis |
      g4 fis4.( e8) e2
      d4^\parenSharp e2 | \undo \hide StaffGroup.BarLine \bar "||"
    }
  } \addlyrics {
    Il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re,
    il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re, com -- mè -- re, com --
    mè -- re, mon ma --
    ry.
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
    sirs. Com -- mè --
    re, c’est pour
    ri -- re __
    Quant
    les pou --
    lail -- les cri --
    ent, quant
    les pou -- lail -- les
    cri -- ent:
    Pe -- ti -- te co --
    quet -- te, pe -- ti -- te co --
    quet -- te, pe -- ti -- te co --
    quet -- te, pe -- ti -- te co --
    quet -- te, qu’es --
    se cy?
  }
  \new Staff = "A" {
    \clef "violin"
    \key b \minor
    \time 2/2
    \relative b {
      << R1 \new Voice \parenthesize b1\repeatTie >> |
      b8 cis d e fis4 fis |
      fis fis fis fis |
      g2 fis |
      b,8 cis d e fis4 fis |
      fis fis cis cis8 cis |
      e4 b b b |
      b1 |
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
      r4 b fis'2.
      d4 fis4. g8 |
      a2 e1
      r4 b |
      fis'2. d4 |
      fis4. g8 a2 |
      e1 |
      r2 d4 d |
      d d d d8 d |
      d d d d d4 d8 d |
      d d d d d d d4 |
      d8 d d d d4 d |
      d d8 d d4 b |
      b b b2\laissezVibrer | % actually a tie
    }
  } \addlyrics {
    \skip 1
    Il est bel et bon, bon,
    bon, bon, bon, com --
    mè -- re,
    il est bel et bon, bon,
    bon, bon, bon, bon, com --
    mè -- re, mon ma --
    ry.
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
    Com -- mè --
    re, c’est pour
    ri -- re
    Quant
    les pou --
    lail -- les cri --
    ent:
    co co
    co co co co co
    co co co co da co co
    co co co co co co da
    co co co co da, pe --
    ti -- te co -- quet -- te,
    qu’es -- se cy?
  }
  \new Staff = "T" {
    \clef "violin_8"
    \key b \minor
    \time 2/2
    \relative e {
      << \absolute \tweak X-offset #3 b2\rest \new Voice \parenthesize e2\repeatTie >> e8 fis g a |
      b4 b d d |
      cis cis a2 |
      b2 b8 a g a |
      b4 b d d |
      cis2 a4 a |
      b4. a8 g4 fis |
      e1 |
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
      g8[ fis e]) fis2 |
      e r4 e |
      b'2. g4 |
      b4. cis8 d2 |
      a r |
      r4 e b'2.
      g4 b4. cis8 |
      d2 a |
      r4 a g e |
      g g a2 |
      fis r4 fis |
      b a8 fis g4 fis8 a |
      b4 a8 fis g4 fis8 a |
      b4 a8 fis g4 fis8 a |
      b4 a8 a a4 g |
      fis fis e2\laissezVibrer | % actually a tie
    }
  } \addlyrics {
    \skip 1
    Il est bel et
    bon, bon, bon, bon,
    bon com -- mè --
    re, il est bel et
    bon, bon, bon, bon,
    bon, bon, com --
    mè -- re, mon ma --
    ry.
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
    sirs. Com --
    mè -- re,
    c’est pour ri --
    re
    Quant les __
    pou -- lail -- les
    cri -- ent,
    quant les pou --
    lail -- les cri --
    ent: Pe --
    ti -- te co -- quet -- te, pe --
    ti -- te co -- quet -- te, pe --
    ti -- te co -- quet -- te, pe --
    ti -- te co -- quet -- te,
    qu’es -- se cy?
  }
  \new Staff = "B" {
    \clef "bass"
    \key b \minor
    \time 2/2
    \relative b, {
      << r1. \new Voice \parenthesize e1.\repeatTie >> % TODO should be R, centered, but that doesn’t support dotted?
      b8 cis d e |
      fis4 fis fis fis |
      e2 b1
      b8 cis d e |
      fis4 fis fis fis |
      e e b b |
      e1 |
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
      r4 b2
      fis' d4 |
      fis4. g8 a2 |
      e1 |
      r4 b2 fis'
      d4 fis4. g8 |
      a2 e1
      r4 d |
      d8 d d d g4 d8 d |
      g4 d8 d g g d d |
      g4 d8 d g g d d |
      g4 d8 d g4 d |
      g d8 d d4 e |
      b b e2\laissezVibrer | % actually a tie
      \tweak RehearsalMark.self-alignment-X #RIGHT
      \tweak RehearsalMark.direction #DOWN
      \mark \markup { \text \normalsize \italic "D.C. al Fine" }
    }
  } \addlyrics {
    \skip 1
    Il est bel et
    bon, bon, bon, com --
    mè -- re, __ % TODO this and other extenders should be longer
    il est bel et
    bon, bon, bon, com --
    mè -- re mon ma --
    ry.
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
    Com --
    mè -- re,
    c’est pour ri --
    re __
    Quant les
    pou -- lail -- les
    cri -- ent: __
    co
    co co co co da, co co
    da, co co co co co co
    da, co co co co co co
    da, co co da, pe --
    ti -- te co -- quet -- te
    qu’es -- se cy?
  }
>>
