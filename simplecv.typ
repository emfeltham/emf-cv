// Based on https://www.overleaf.com/latex/templates/autocv/scfvqfpxncwb and https://www.overleaf.com/latex/templates/faangpath-simple-template/npsfpdqnxmbc

// Reduce space between paragraphs.
#let par_space = 0.5em
// Reduce space between headings and descriptions.
#let sep_space = par_space + 0.2em
// Indent for continuation lines of bibliography-style entries.
#let hang = 1.2em

// Format start and end dates.
#let format_date(start_date: none, end_date: none) = {
  let date = {
    if end_date == none {
        start_date
      } else if start_date == none {
        end_date
      } else {
        start_date + "–" + end_date
      }
  }

  [*#date*]
}

// Format locations.
#let format_location(location) = {
  [_#block(above: sep_space, location)_]
}

// General entry that is split into a left and right half (for experience and education).
#let cv_entry(left_content: none, right_content: none) = {
  // Entry descriptions use `\` linebreaks within one paragraph, so every line
  // must start flush; cancel the document-wide hanging indent here.
  set par(hanging-indent: 0em)

  block(breakable: false)[
    #grid(
    columns: (30fr, 9fr), // column 1 originally 11fr
    column-gutter: 1cm,
    {
      set align(left)
      left_content
    },
    {
      set align(right)
      right_content
    }
  )]
}

// Entry for education.
#let education_entry(degree, university, degree_title: none, description: none, start_date: none, end_date: none, location: none) = {
  cv_entry(
    left_content:  {
      if degree_title != none {
        [*#degree_title*] + " "
      } + [*#degree*] + [, #university] + block(above: sep_space, par[#description])
    },
    right_content:  {
      format_date(start_date: start_date, end_date: end_date)

      if location != none {
        "\n" + format_location(location)
      }
    }
  )
}

// Entry for work.
#let work_entry(role, company, tasks: none, start_date: none, end_date: none, location: none) = {
  cv_entry(
    left_content: {
      [*#role*] + "\n" + block(above: sep_space, text[#company])

      if tasks != none {
        let tasks_list = []

        for task in tasks {
          tasks_list += [- #task]
        }

        tasks_list
      }
    },
    right_content:  {
      format_date(start_date: start_date, end_date: end_date)

      if location != none {
        "\n" + format_location(location)
      }
    }
  )
}

// Set name and contact data and format headings
#let template(name, contact_data, color, doc) = {
  // PDF metadata, so the file identifies itself when downloaded or archived.
  // `date: none` omits the compile timestamp, keeping rebuilds reproducible.
  set document(
    title: name + " — Curriculum Vitae",
    author: name,
    date: none,
  )
  set page(
    margin: (x: 0.75in, y: 0.75in),
    footer: context {
      let n = counter(page).get().first()
      if n > 1 {
        set text(size: 9pt, weight: "light")
        align(right)[#name — #n of #counter(page).final().first()]
      }
    },
  )
  // Pin the family rather than relying on Typst's default, which has changed
  // between releases. Ragged right, and never hyphenate: justified text splits
  // words inside paper titles.
  set text(font: "Libertinus Serif", size: 11pt, hyphenate: false)
  set par(justify: false, leading: par_space)

  // Colour bare DOIs and preprint URLs, where blue is a useful affordance for a
  // clickable identifier. Leave linked prose black: a run of blue words inside a
  // sentence reads as noise, and only some venues have URLs, so a coloured venue
  // list comes out ragged. A bodyless `link` gives a text body holding the URL;
  // prose bodies give text, emph, or a sequence, none of which start with "http".
  show link: it => {
    if it.body.has("text") and it.body.text.starts-with("http") {
      text(fill: color, it)
    } else {
      it
    }
  }

  align(center)[
    #smallcaps(text(size: 2.2em, fill: black)[#name]) \

    #{
      if contact_data != none and contact_data.len() > 0 {
        let elements = for el in contact_data {
          (link(el.link)[#{box(image(height: 0.7em, el.service + ".svg")) + " " + el.display}],)
        }
        // The show rule above deliberately skips these (icon + label sequences),
        // so colour the contact row here to keep it blue.
        text(fill: color, elements.join(" | "))
      }
    }
  ]

  // Hanging indent for bibliography-style entries, set after the centered
  // header so the name and contact row are unaffected. Lists and enums hang
  // already, so cancel it inside them.
  set par(hanging-indent: hang)
  // Tight lists space items by `leading`, making a wrapped item's second line
  // indistinguishable from the next item. 0.7em is the most the 5-page budget allows.
  set list(tight: false, spacing: 0.7em)
  show list: set par(hanging-indent: 0em)
  show enum: set par(hanging-indent: 0em)

  show heading.where(level: 1): i => {
    set align(left)
    set par(hanging-indent: 0em)
    set text(weight: "light", size: 1.1em, fill: color)

    // `sticky` keeps a heading from being orphaned at the foot of a page;
    // the custom show rule would otherwise discard Typst's default stickiness.
    // Hairline rule: 2pt is a table-boundary weight, and 20 of them banded the page.
    block(above: 1em, sticky: true, stack(
      dir: ttb,
      spacing: 2mm,
      smallcaps(i.body),
      line(length: 100%, stroke: color + 0.5pt),
    ))
  }

  show heading.where(level: 2): i => {
    set align(left)
    set par(hanging-indent: 0em)
    set text(weight: "light", size: 1.0em, fill: color)

    block(above: 1.2em, below: 0.8em, sticky: true, smallcaps(i.body))
  }

  doc
}
