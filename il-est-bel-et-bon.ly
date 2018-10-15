\version "2.19.82"

\header {
  title = "Il est bel et bon"
}

mensurstriche = \hide Staff.BarLine

%\transpose e es
\new StaffGroup \with {
  \hide Staff.BarLine
} <<
  \new Staff {
    \clef "violin"
    \key e \minor
    \relative e' {
      e8 fis g a b4 b |
    }
  } \addlyrics {
    Il est bel et bon bon
  }
  \new Staff {
    \clef "violin"
    \key e \minor
    \relative b' {
      R1 |
      b8 cis d e fis4 fis |
    }
  } \addlyrics {
    Il est bel et bon bon
  }
  \new Staff {
    \clef "violin_8"
    \key e \minor
    \relative e {
      r2 e8 fis g a |
      b4 b
    }
  } \addlyrics {
    Il est bel et
    bon bon
  }
  \new Staff {
    \clef "bass"
    \key e \minor
    \relative b, {
      R1 |
      r2 b8 cis d e |
      fis4 fis fis fis |
      e2 b1
      b8 cis d e |
      fis4 fis fis fis |
      e e b b |
      e1.
    }
  } \addlyrics {
    Il est bel et
    bon bon bon com --
    me -- re __
    Il est bel et
    bon bon bon com --
    me -- re mon ma --
    ry __
  }
>>
