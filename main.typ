#import "simplecv.typ": template, education_entry, work_entry, skill_entry 

// Change the theme color of the cv.
#let color = rgb("#00356b")
// Change to your name.
#let name = "Eric Martin Feltham"

// Change the shown contact data. You can also change the order of the elements so that they will show up in a different order. Currently, only these five elements are available with icons, but you can add new ones by editing the template.
#let contact_data = (
  (
    "service": "email",
    "display": "eric.feltham@aya.yale.edu",
    "link": "mailto://eric.feltham@aya.yale.edu"
  ),
  (
    "service": "orcid",
    "display": "0000-0001-8080-7119",
    "link": "https://orcid.org/0000-0001-8080-7119"
  ),
  (
    "service": "github",
    "display": "emfeltham",
    "link": "https://github.com/emfeltham"
  ),
  (
    "service": "website",
    "display": "emfeltham.github.io",
    "link": "https://emfeltham.github.io"
  ),
  // (
  //   "service": "phone",
  //   "display": "+1 123 456 789",
  //   "link": "tel:+1 123 456 789"
  // ),
)

#show: doc => template(name, contact_data, color, doc)

// Starting from here, you can add as much content as you want. This represents the main content of the cv.
= Employment
#work_entry("Postdoctoral Associate", [Yale Institute for Network Science and Department of Sociology, Yale University], start_date: "June 2023", end_date: "current", tasks: ()
)

= Education

#education_entry("Sociology", "Yale University (with Distinction)",
degree_title: "Ph.D.,", end_date: "May 2023",
description: [
  Dissertation title: "Cognizing Social Networks" \
  Dissertation committee: Drs. Nicholas Christakis (chair), Emily Erikson, Laura Forastiere, Ifat Levy
], location: "New Haven, CT")

#education_entry("Statistics", "Yale University",
degree_title: "M.A.,", end_date: "2018",
description: [], location: "New Haven, CT")

#education_entry("Philosophy; B.A., Economics", "University of Massachusetts Amherst",
degree_title: "B.A.,", end_date: "2013",
description: [_magna cum laude_, _Phi Beta Kappa_], location: "Amherst, MA")

= Research interests

#grid(
  columns: (30fr, 6fr),
  [Social networks, causal inference statistical methods, mathematical sociology, social cognition, social psychology, social theory, political sociology],
)

= Research experience

#work_entry("Graduate Researcher", "Yale Institute for Network Science and Human Nature Lab, New Haven, CT", start_date: "2016", end_date: "2023", tasks: (
  [Designed and led large scale data collection and analysis efforts on individuals' perceptions of social network structure in 82 villages in rural Honduras],
  [Developed sampling method for cognitive social structures research design],
  [Conducted fieldwork in rural Honduras to support data collection and analysis effort for thesis project],
  [Developed generalized difference-in-differences methodology to estimate the impact of large-scale political gatherings on the spread of COVID-19 in the USA],
)
)

#work_entry("Research Fellow", "Dr. Emily Erikson, Yale University, New Haven, CT", end_date: "2019", tasks: (
  [Analyzed historical social network data consisting of English economic manuscript writers from the 18th century],
  [Applied topic modeling to uncover trends in the economic literature over a roughly 200-year period],
)
)

#work_entry("Graduate Researcher", "Drs. James Evans, Michael Franklin, Joshua Tenenbaum, University of Chicago, Chicago, IL", end_date: "2018", tasks: (
  [Part of a team on a grant "Social MIND: Social Machine Intelligence for Novel Discovery"],
)
)

#work_entry("Research Assistant", "Levy and Harpaz-Rotem Labs, Yale University School of Medicine, New Haven, CT", start_date: "2014", end_date: "2016", tasks: (
  [Independently performed fear conditioning experiments with human participants in behavioral and MRI settings],
  [Preprocessed and analyzed fMRI data using BrainVoyager software],
)
)

#work_entry("Research Assistant", "Schiller Affective Neuroscience Lab, Mount Sinai Icahn School of Medicine, New York, NY", end_date: "2014", tasks: (
  [Independently performed human subject trials investigating the effects of a pharmacological agent on memory formation and persistence],
)
)

#work_entry("Undergraduate Honors Thesis", "University of Massachusetts Amherst Commonwealth Honors College, Amherst, MA", end_date: "2013", tasks: (
  [Title: “Unconscious Attention? Inattentional Consciousness? Examining the Relationship Between Attention and Phenomenal Consciousness”],
  [Committee: Drs. Joseph Levine and Louise Anthony]
)
)

= Publications

*Eric Feltham*, Laura Forastiere, Marcus Alexander, Nicholas Christakis. (2023). "Mass gatherings for political expression had no discernible association with the local course of the COVID-19 pandemic in the USA in 2020 and 2021". _Nature Human Behavior_. #link("https://doi.org/10.1038/s41562-023-01654-1")

Emily Erikson and *Eric Feltham*. (2021). "Structure". In #link("https://www.e-elgar.com/shop/usd/research-handbook-on-analytical-sociology-9781789906844.html")[_Research Handbook on Analytical Sociology_]. Cheltenham, UK: Edward Elgar Publishing.

Emily Erikson and *Eric Feltham*. (2020). "Historical Network Research". In _Oxford Handbook of Social Networks_. New York: Oxford UP. #link("https://doi.org/10.1093/oxfordhb/9780190251765.001.0001")

Philipp Homan, Ifat Levy, *Eric Feltham*, Charles Gordon, Jingchu Hu, Jian Li, Robert H. Pietrzak, Steven Southwick, John H. Krystal, Ilan Harpaz-Rotem, Daniela Schiller. (2019). "Neural computations of threat in the aftermath of combat trauma". _Nature Neuroscience_ 22, 470–476. #link("https://doi.org/10.1038/s41593-018-0315-x")

= Working papers

*Eric Feltham*, Laura Forastiere, and Nicholas Christakis. "Humans possess systematically distorted cognitive representations of
their social networks" (under review at _Nature Human Behaviour_).

*Eric Feltham* and Nicholas Christakis. "Risk Attitudes and Network Structure in Honduras".

*Eric Feltham* and Nicholas Christakis. "The Networked Climate Game".

*Eric Feltham*. "Identity and Polarization".

Dominik Duell, *Eric Feltham*, Nicholas Christakis. "Revolutions _in silico_".

= Other writing

*Eric Feltham* and Nicholas Christakis. (2023). "Rapid research with a pandemic bearing down: Studying the impact of mass gatherings on the course of COVID-19". *Springer Nature Communities*. (Invited contribution to "Behind the Paper" series for the Springer Nature Social Sciences online community.)

*Eric Feltham* and Nicholas Christakis. (2020). "Voting In The 2020 Primaries Didn’t Worsen The COVID-19 Pandemic". *FiveThirtyEight*.

= Honors and awards

#work_entry(link("https://sociology.yale.edu/news/eric-martin-feltham-2024-winner-yale-sociology-departments-marvin-b-sussman-dissertation-prize")[Sussman Prize for best dissertation in the past two years], "Yale Department of Sociology, New Haven, CT", end_date: "2024", tasks: ())

#work_entry("Commonwealth Honors College Scholar with Greatest Distinction", [University of Massachusetts Amherst, Amherst, MA], end_date: "2013", tasks: (
  [Awarded based on thesis quality and GPA],
)
)

= Grants

#work_entry("National Institutes of Health, The National Institute on Aging and the Office of Behavioral and Social Sciences Research", [Research Grant (R-01), "Characterizing Individuals' Cognitive Maps of their Village Social Networks"], end_date: "2022", tasks: (
  [Award: \$3,226,809 (over 4 years)],
  [PI: Dr. Nicholas Christakis],
  [Role: Researcher],
)
)

#work_entry("Robert Wood Johnson Foundation", ["Assessing the Hazard of Elections During the COVID-19 Pandemic"], end_date: "2020", tasks: (
  [Award: \$350,000],
  [PI: Dr. Nicholas Christakis],
  [Role: Researcher],
)
)

// #work_entry("U.S. Fulbright Research Semi-Finalist", [], end_date: "2016", tasks: (
//   [Proposal to research economic and social decision-making],
// )
// )

// #work_entry([#link("https://www.cmu.edu/dietrich/philosophy/undergraduate/summer-school/index.html")[Summer School in Logic and Formal Epistemology]], [Carnegie Mellon University], end_date: "2015", tasks: (
//   [Admitted with full-funding to competitive NSF-funded program],
//   [Took advanced courses in topology, modal logic, and the applications of decision theory for formal epistemology],
// )
// )

// #work_entry([#link("https://www.nhlbi.nih.gov/grants-and-training/summer-institute-biostatistics")[Summer Institute for Training in Biostatistics]], [Emory University], end_date: "2014", tasks: (
//   [Admitted with full-funding to competitive NIH-funded program],
//   [Took introductory graduate level Biostatistics courses],
//   [Presented case studies based on statistical analysis],
// )
// )

= Software

#link("https://github.com/human-nature-lab/TSCSMethods.jl")[TSCSMethods.jl] (sole author)
- Performs non-parametric generalized differences-in-differences estimation, with covariate matching

#link("https://github.com/human-nature-lab/SamplingPerceivedNetworks.jl")[SamplingPerceivedNetworks.jl] (sole author)
- Implements a sampling procedure for "cognitive social structures" data collection

#link("https://github.com/emfeltham/Typst.jl")[Typst.jl] (sole author)
- Implements an interface from the Julia language to the mark-up language Typst for academic writing

#link("https://github.com/JuliaGraphs/GraphDataFrameBridge.jl")[GraphDataFrameBridge.jl] (contributor)
- Contributed functions to process network data

= Teaching

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Jan. 2023", end_date: "May 2023", tasks: (
  [Course: Sociology of Crime and Deviance SOCY 141b],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Sep. 2022", end_date: "Dec. 2022", tasks: (
  [Course: Health of the Public SOCY 126a],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Jan. 2022", end_date: "May 2022", tasks: (
  [Course: Topics in Contemporary Social Theory SOCY 152b],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Sep. 2021", end_date: "Dec. 2021", tasks: (
  [Course: Sex and Gender in Society SOCY 134a],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Jan. 2020", end_date: "May 2020", tasks: (
  [Course: Health of the Public SOCY 126b],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Sep. 2019", end_date: "Dec. 2019", tasks: (
  [Course: Foundations of Modern Social Theory SOCY 151a],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Jan. 2019", end_date: "May 2019", tasks: (
  [Course: Social Networks and Society SOCY 167b],
)
)

#work_entry([Yale College, New Haven, CT], "Teaching Fellow", start_date: "Sep. 2018", end_date: "Dec. 2018", tasks: (
  [Course: Computers, Networks and Society SOCY 133a],
)
)

= Invited talks

*Eric Feltham*. "Cognizing social networks". #link("https://www.asanet.org/annual-meeting/")[Mathematical and Computational Methods in Social Psychology (Co-sponsored by Sections on Social Psychology and Mathematical Sociology)], American Sociological Association, Montréal, Québec, August 2024

*Eric Feltham*. "Cognizing social networks". #link("https://sn.ethz.ch/dualityat50.html")[Duality@50: Making progress and looking forward], ETH Zürich, Ascona, Switzerland, April 2024

*Eric Feltham*. "Cognizing social networks". University of Iowa, Iowa City, IA, Nov. 2023

*Eric Feltham*. "Cognizing social networks". Implementation and Dissemination Science Workshop. Copán, Honduras, June 2023

*Eric Feltham*. "Modeling the Effect of Identity on Polarization". Center for Empirical Research on Stratification and Inequality, Yale University, New Haven, CT, Jan. 2019

*Eric Feltham*. “Experiments on Observational Learning”. Yale Institute for Network Science, New Haven, CT, Aug. 2018

Megha Chawla, Philipp Homan, Charles Gordon, *Eric Feltham*, Daniela Schiller, Ilan Harpaz-Rotem, Ifat Levy. "Cortical thickness and volume of the right posterior parietal cortex predict individual learning rate in healthy adults". Society for Neuroscience, San Diego, CA, 2018

*Eric Feltham*. "Using Tools from Causal Inference to Reconstruct Simulated Social Data". Defense Advanced Research Projects Agency, Alexandria, VA, 2018

= Mentoring

Karen Gao (Computer Science and Psychology, Yale College 2027)

Breanna Nguyen (Cognitive Science, Yale College 2025)

Kaity Chandrika (Sociology, Yale College 2025)

Justice Harasha (Economics and Mathematics, Yale College 2024)

Kayla Morgan (Cognitive Science, Yale College 2024)

Benjamin Snyder (Economics, Yale College 2022)

= Professional service

Reviewer, *Risk Analysis* (2022 Impact Factor: 3.8)

Reviewer, *Policy Analysis* (2022 Impact Factor: 2.2)

Reviewer, *Yale Undergraduate Research Journal*

= Skills
// Ratings won't be displayed in this template.
#skill_entry("Languages",
  (
    "Git",
    "Julia",
    "R",
    "MATLAB",
    "Python",
    "Spanish (basic)",
    "French (basic)"
  )
)

== Selected coursework

Data Analysis, Probability Theory, Theory of Statistics, Multivariate Statistical Analysis, Linear Models, Stochastic Processes, Computational Tools for Data Science, Research Design & Causal Inference, Social Network Analysis, Research Topics in Human Nature and Social Networks, Topics in Biosocial Science, The Microeconomics of Coordination and Conflict

= Advocacy

#work_entry("Campaign Coordinator", "Students for a Just and Stable Future, Boston, MA", start_date: "2010", end_date: "2011", tasks: (
  [Spoke at public events to represent the organization],
  [Coordinated a campaign with community members and college students from across Massachusetts],
  [Worked on climate policy for MA state legislation],
)
)

#work_entry("Team Leader", "Better Future Project, Boston, MA", start_date: "June 2010", end_date: "Aug. 2011", tasks: (
  [Led a team of four members and coordinated their roles relating to media, events, and housing],
  [Organized events discussing the impacts of economic and environmental policy]
)
)

= References

Dr. Nicholas Christakis, Sterling Professor of Social and Natural Science, Yale University

Dr. Emily Erikson, Professor of Sociology and (by courtesy) Management, Yale University

Dr. Laura Forastiere, Assistant Professor of Biostatistics, Yale School of Public Health, Yale University

Dr. Ifat Levy, Associate Professor of Comparative Medicine, Neuroscience, and Psychology, Yale School of Medicine, Yale University
