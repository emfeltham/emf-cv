# emf-cv

Typst source for Eric Martin Feltham's academic CV.
`main.typ` is content; `simplecv.typ` is the template. `main.pdf` is committed.

```sh
typst compile main.typ
```

Built with **Typst 0.15.1**. The font family is pinned to **Libertinus Serif** in
`simplecv.typ` rather than relying on Typst's default, which has changed across
releases — otherwise a Typst upgrade silently reflows the whole document.

Rebuilds are byte-reproducible: `set document(..., date: none)` omits
`/CreationDate` and `/ModDate`, so a no-op recompile produces no diff on the
committed PDF. Don't add a date back.

---

## The 5-page budget

The CV must hold at **5 pages**. Total slack is about **112pt** (~9 lines), and it
is not evenly spread:

| page | slack |
|---|---|
| 1 | 36.8pt |
| 2 | **0pt — full** |
| 3 | 12.1pt |
| 4 | 34.6pt |
| 5 | 29.6pt |

Page 2 has no room. Anything added above it pushes into it, and page 2 pushes into
page 3. **Always re-check the page count after editing** — see *Checks* below.

---

## Traps

Ordered by how likely each one is to bite.

### 1. `block(breakable: false)` entries can blow out a whole page

`cv_entry` wraps every entry in `block(breakable: false)`, and level-1 headings are
`sticky: true`. So a heading plus its first entry must fit on one page **as a single
unit**.

The worst case is `= Research experience` → *Graduate Researcher* (YINS, 4 bullets),
which is roughly **180pt tall**. When it doesn't fit, it doesn't split — it jumps to
the next page and leaves the remainder of the current one blank. This has already
happened once: 174pt of dead space on page 4 and a spill to 6 pages.

If you add content anywhere before Research experience and the page count jumps,
this is almost certainly why. The fix is to let that entry break, not to trim
elsewhere at random.

### 2. A level-2 heading costs ~33pt, not ~12pt

`above: 1.2em` (13.2pt) + text (11pt) + `below: 0.8em` (8.8pt). Adding one `==` to a
full page cascades through every page after it. This is what caused the 6-page build
above — the estimate was off by 3x.

### 3. A bare `#set` in markup runs to the end of its enclosing scope

At top level that means **the rest of the document**. Scope it with `#[ ... ]`:

```typst
#[
#set par(hanging-indent: 0em)
Social networks and network cognition; ...
]
```

Three places in `main.typ` rely on this (Research interests, Professional service,
Teaching interests). Getting it wrong is silent — it kills the hanging indent for
every section below the one you edited, with no error.

### 4. Hanging indent must be cancelled anywhere `\` linebreaks are used

`hanging-indent: 1.2em` is set document-wide, *after* the centred header so the name
and contact row are unaffected. It is cancelled in `cv_entry` (so all education and
work entries stay flush), in lists, in enums, and in the three `#[ ]` blocks above.

Any new construct that joins lines with `\` inside a single paragraph needs the same
cancellation, or every line after the first will indent.

### 5. `par(justify: true)` silently turns on hyphenation

`text.hyphenate: auto` means "hyphenate if justified". Justification was splitting
words inside paper titles (`after-/math`, `Cogni-/tive`, `Invest-/ment`). The
document is now `justify: false, hyphenate: false`. The redundant `hyphenate: false`
is deliberate, so a future justification experiment can't quietly reintroduce it.

### 6. Ragged right orphans single words

Two non-breaking spaces (`Yale~University`, at `main.typ:49` and `:59`) exist purely
to stop a one-word last line. Justification used to hide these by compressing the
line. Watch for new ones when editing entry text.

### 7. Link colour depends on the link's *body shape*

Only links that display a URL are coloured:

```typst
show link: it => {
  if it.body.has("text") and it.body.text.starts-with("http") { text(fill: color, it) } else { it }
}
```

- `#link("https://...")` — bodyless, displays the URL → **blue**
- `#link("https://...")[Prose]` → **black**

So a DOI you want blue must be written bodyless. And a prose-bodied link gets no
colour cue, which is why the Software package names are wrapped in `*...*` — without
it they'd be indistinguishable from body text.

The header contact row is coloured explicitly in `simplecv.typ`, because its link
bodies are icon-plus-label sequences that the rule deliberately skips.

### 8. Level-2 `above` serves two contexts and can't be split

`Publications` → `Peer-reviewed articles` measures 14.23pt; content → `Other talks`
measures 10.02pt. Both resolve from the same `above: 1.2em`, because an explicit
`above` on a block *overrides* the preceding element's spacing rather than taking the
maximum. Cutting it to tighten the first collapses the second to 0.78pt — a
collision. This was tested; don't re-litigate it.

### 9. List spacing is at its ceiling

```typst
set list(tight: false, spacing: 0.7em)
```

Tight lists space items by `leading`, which makes a wrapped item's second line
indistinguishable from the start of the next item — a real problem with 18 wrapped
items among 52 bullets. **0.7em is the most the 5-page budget allows; 0.8em spills to
6 pages.**

### 10. Custom `show heading` rules discard Typst's default stickiness

Typst headings refuse to sit alone at the foot of a page. A `show` rule that replaces
the element throws that away, so both rules pass `sticky: true` explicitly. Don't
drop it.

### 11. Module-level `set` rules in `simplecv.typ` do nothing

Content returned from a module's functions is styled where it is **placed**, not where
it is built, and a module-level `set` doesn't reach the importing document. A
`#set list(indent: 1em)` sat at the top of `simplecv.typ` for as long as the file
existed and never applied to anything. Put styling inside `template`.

### 12. Section rules are hairlines on purpose

`stroke: color + 0.5pt`. There are 19 level-1 headings; at 2pt they banded the pages
into stripes (page 5 carried four). Hierarchy is carried by the *presence* of the
rule, not its weight — level-1 has one, level-2 doesn't. That distinction reads
identically at 0.5pt and 2pt, so heading sizes were left alone (level-1 `1.1em`,
level-2 `1.0em`).

Note that `weight: "light"` appears on both heading rules, the footer, and the
"Last updated" line, but **Libertinus Serif ships only weights 400 and 700** — all
four resolve to Regular. They are inert, not load-bearing.

---

## Checks before committing

```sh
# 1. clean compile
typst compile main.typ

# 2. page count must be 5
python3 -c "import re;print(len(re.findall(rb'/Type\s*/Page[^sC]',open('main.pdf','rb').read())))"

# 3. no hyphenation regression (expect no output)
pdftotext -layout main.pdf - | grep -nE "after-$|Cogni-$|Invest-$"

# 4. reproducible — both hashes must match
typst compile main.typ && md5 -q main.pdf
typst compile main.typ && md5 -q main.pdf
```

Then read the rendered pages and confirm: no section heading orphaned at a page foot;
no page left with a large blank tail (trap 1); the `Eric Martin Feltham — n of 5`
footer present on pages 2-5 and absent from page 1.

For spacing work, group `pdftotext -bbox` words into visual lines by `yMin` (1.2pt
tolerance) and check baseline-to-baseline deltas. The healthy ladder is:

| b2b | meaning |
|---|---|
| 12.74pt | line within a paragraph or wrapped list item |
| 14.94pt | list item → list item |
| 20.4pt | entry → entry, paragraph → paragraph |
| 22.78pt | content → level-1 heading |
| 27.2pt | level-1 heading → its content |

Any negative gap is a collision. Exclude footer lines (height < 11pt and y > 700)
when measuring per-page slack, or the footer masks the real value.

---

## Content conventions

Multi-author entries keep the **complete author list in published order**, with
"Eric Feltham" bolded in position. Author order carries credit and, for conference
entries, signals who presented — so entries are never condensed to a
"(with X, Y)" form and his name is never moved to the front. If an entry looks
inconsistent with its neighbours purely because of its author list, leave it.
