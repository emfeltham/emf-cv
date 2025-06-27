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

#work_entry("Postdoctoral Research Scholar", [Data Science Institute, Columbia University], start_date: "Sept. 2024", end_date: "", tasks: ())

#work_entry("Postdoctoral Associate", [Yale Institute for Network Science and Department of Sociology, Yale University], start_date: "June 2023", end_date: "Aug. 2024",
)

= Education

#education_entry("Sociology", "Yale University (with Distinction)",
degree_title: "Ph.D.,", end_date: "May 2023",
description: [
  Dissertation: "Cognizing Social Networks" \
  Committee: Drs. Nicholas Christakis (chair), Emily Erikson, Laura Forastiere, Ifat Levy \
  Winner of the 2024 Marvin B. Sussman Dissertation Prize from Yale University
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
  [Social theory, social networks, computational social science, mathematical sociology, social cognition, social psychology, political sociology, causal inference],
  //causal inference statistical methods, 
)

= Publications

*Eric Feltham*, Laura Forastiere, and Nicholas Christakis. "Cognitive representations of social networks in isolated villages". _Nature Human Behaviour_ (2025). #link("https://doi.org/10.1038/s41562-025-02221-6")
- Selected for a "Research Briefing" feature by _Nature Human Behaviour_.

*Eric Feltham*, Laura Forastiere, Marcus Alexander, Nicholas Christakis. (2023). "Mass gatherings for political expression had no discernible association with the local course of the COVID-19 pandemic in the USA in 2020 and 2021". _Nature Human Behavior_. #link("https://doi.org/10.1038/s41562-023-01654-1")
- Featured in _FiveThirtyEight_.

Emily Erikson and *Eric Feltham*. (2021). "Structure". In #link("https://www.e-elgar.com/shop/usd/research-handbook-on-analytical-sociology-9781789906844.html")[_Research Handbook on Analytical Sociology_]. Cheltenham, UK: Edward Elgar Publishing.

Emily Erikson and *Eric Feltham*. (2020). "Historical Network Research". In _Oxford Handbook of Social Networks_. New York: Oxford UP. #link("https://doi.org/10.1093/oxfordhb/9780190251765.001.0001")

Philipp Homan, Ifat Levy, *Eric Feltham*, Charles Gordon, Jingchu Hu, Jian Li, Robert H. Pietrzak, Steven Southwick, John H. Krystal, Ilan Harpaz-Rotem, Daniela Schiller. (2019). "Neural computations of threat in the aftermath of combat trauma". _Nature Neuroscience_ 22, 470–476. #link("https://doi.org/10.1038/s41593-018-0315-x")

= Working papers

*Eric Feltham*. "The social and cultural context of social network cognition". (manuscript in prep.)

*Eric Feltham* and Nicholas Christakis. "Expecting Homophily". (manuscript in prep.)

*Eric Feltham*, Nicholas Christakis, and Laura Forastiere. "Sampling Cognitive Social Structures". (research phase)

*Eric Feltham* and Nicholas Christakis. "The Networked Climate Game". (data collection phase)

*Eric Feltham* and Nicholas Christakis. "Risk Attitudes and Network Structure in Honduras". (research phase)

*Eric Feltham*. "Identity and Polarization". (manuscript in prep.)

Dominik Duell, *Eric Feltham*, Nicholas Christakis. "Revolutions _in silico_". (data collection phase)

= Book

"Cognizing social networks" (working title). Manuscript in preparation.
- Book proposal under review

= Other writing

“Cognitive representations of social networks in isolated villages.” *Nature Human Behaviour Research Briefing* (in press). (Invited contribution by Nature Human Behaviour)

*Eric Feltham* and Nicholas Christakis. (2023). "Rapid research with a pandemic bearing down: Studying the impact of mass gatherings on the course of COVID-19". *Springer Nature Communities*. (Invited contribution to "Behind the Paper" series for the Springer Nature Social Sciences online community.)

*Eric Feltham* and Nicholas Christakis. (2020). "Voting In The 2020 Primaries Didn't Worsen The COVID-19 Pandemic". *FiveThirtyEight*.

= Invited Talks

*"Cognizing social networks"*
- Department of Psychology, Harvard University (Cognition, Brain, Behavior Seminar), September 2025
- Department of Sociology, Yale University (Sussman Award Lecture), May 2025
- Department of Sociology, University of Iowa (Social Networks Workshop), Iowa City, IA, November 2023

*"Modeling the Effect of Identity on Polarization"*
- Center for Empirical Research on Stratification and Inequality, Yale University, January 2019

*“Experiments on Observational Learning”*
- Yale Institute for Network Science, August 2018

*"Using Tools from Causal Inference to Reconstruct Simulated Social Data"*
- DARPA Workshop, Alexandria, VA, 2018

= Conference Presentations

*"Cognizing social networks"*
- #link("https://www.ic2s2-2025.org")[International Conference on Computational Social Science], Norrköping, Sweden, July 2025
- #link("https://www.asanet.org/annual-meeting/")[American Sociological Association] (Sections on Social Psychology and Mathematical Sociology), Montréal, August 2024
- #link("https://sn.ethz.ch/events/dualityat50.html")[Duality\@50: Making progress and looking forward], ETZ Zürich, Ascona, Switzerland, April 2024
- Implementation and Dissemination Science Workshop, Copán, Honduras, June 2023

*"Expecting Homophily"*
- #link("https://inas.sociology.columbia.edu")[Annual Conference of the International Network of Analytical Sociology], Columbia University, June 2025

Megha Chawla, Philipp Homan, Charles Gordon, *Eric Feltham*, Daniela Schiller, Ilan Harpaz-Rotem, Ifat Levy. *"Cortical thickness and volume of the right posterior parietal cortex predict individual learning rate in
healthy adults"*
- Society for Neuroscience, San Diego, CA, 2018

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

= Software

#link("https://github.com/human-nature-lab/TSCSMethods.jl")[TSCSMethods.jl] (sole author)
- Performs non-parametric generalized differences-in-differences estimation, with covariate matching

#link("https://github.com/emfeltham/Margins.jl")[Margins.jl] (sole author)
- Computes marginal effects for generalized linear models and mixed models

#link("https://github.com/human-nature-lab/SamplingPerceivedNetworks.jl")[SamplingPerceivedNetworks.jl] (sole author)
- Implements a sampling procedure for "cognitive social structures" data collection

#link("https://github.com/emfeltham/Typst.jl")[Typst.jl] (sole author)
- Implements an interface from the Julia language to the mark-up language Typst for academic writing

#link("https://github.com/JuliaGraphs/GraphDataFrameBridge.jl")[GraphDataFrameBridge.jl] (contributor)
- Contributed functions to process network data

= Teaching

*Teaching Fellow*, Yale College, Yale University (2018–2023):

- SOCY 133a, Computers, Networks and Society (Fall 2018)
- SOCY 167b, Social Networks and Society (Spring 2019)
- SOCY 151a, Foundations of Modern Social Theory (Fall 2019)
- SOCY 126b, Health of the Public (Spring 2020)
- SOCY 134a, Sex and Gender in Society (Fall 2021)
- SOCY 152b, Topics in Contemporary Social Theory (Spring 2022)
- SOCY 126a, Health of the Public (Fall 2022)
- SOCY 141b, Sociology of Crime and Deviance (Spring 2023)

= Mentoring

- Karen Gao (Computer Science & Psychology, Yale College 2027)
- Ashley Oaks (Statistics & Data Science, PhD)
- Breanna Nguyen (Cognitive Science, Yale College 2025)
- Kaity Chandrika (Sociology, Yale College 2025)
- Justice Harasha (Economics & Mathematics, Yale College 2024)
- Kayla Morgan (Cognitive Science, Yale College 2024)
- Benjamin Snyder (Economics, Yale College 2022)

= Service

== Ad hoc reviews

- Proceedings of the National Academy of Sciences of the United States of America
- Group Processes & Intergroup Relations
- Risk Analysis
- Policy Analysis
- Yale Undergraduate Research Journal

= Skills

== Languages
Julia, R, MATLAB, Python, Spanish (basic), French (basic)

== Selected coursework

Theory of Statistics, Multivariate Statistical Analysis, Linear Models, Stochastic Processes, Computational Tools for Data Science, Research Design & Causal Inference, Social Network Analysis, Topics in Biosocial Science, The Microeconomics of Coordination and Conflict

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

+ Dr. Peter Bearman, Cole Professor of Social Science in the Department of Sociology, Columbia University
  - psb17\@columbia.edu

+ Dr. Nicholas Christakis, Sterling Professor of Social and Natural Science, Yale University
  - nicholas.christakis\@yale.edu

+ Dr. Emily Erikson, Professor of Sociology and (by courtesy) Management, Yale University
  - emily.erikson\@yale.edu

+ Dr. Laura Forastiere, Associate Professor of Biostatistics, Yale School of Public Health, Yale University
  - laura.forastiere\@yale.edu

+ Dr. Ifat Levy, Associate Professor of Comparative Medicine, Neuroscience, and Psychology, Yale School of Medicine, Yale University
  - ifat.levy\@yale.edu
