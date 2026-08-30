#import "simplecv.typ": template, education_entry, work_entry

// Change the theme color of the cv.
#let color = rgb("#00356b")
// Change to your name.
#let name = "Eric Martin Feltham"

// Change the shown contact data. You can also change the order of the elements so that they will show up in a different order. Currently, only these five elements are available with icons, but you can add new ones by editing the template.
#let contact_data = (
  (
    "service": "email",
    "display": "eric.feltham@aya.yale.edu",
    "link": "mailto:eric.feltham@aya.yale.edu"
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

// Add the "Last updated" line below the contact info
#align(right)[
  #text(size: 9pt, weight: "light")[Last updated: August 2026]
]

// Starting from here, you can add as much content as you want. This represents the main content of the cv.
= Employment

#work_entry("Data Science Institute Postdoctoral Fellow", [Columbia University], start_date: "Sept. 2024", end_date: "Present", location: "New York, NY", tasks: ())

#work_entry("Postdoctoral Associate", [Yale Institute for Network Science and Department of Sociology, Yale~University], start_date: "June 2023", end_date: "Aug. 2024", location: "New Haven, CT"
)

= Education

#education_entry("Sociology (with Distinction)", "Yale University",
degree_title: "Ph.D.,", end_date: "May 2023",
description: [
  Dissertation: "Cognizing Social Networks" \
  Committee: Drs. Nicholas Christakis (chair), Emily Erikson, Laura Forastiere, Ifat Levy \
  Winner of the 2024 Marvin B. Sussman Dissertation Prize from Yale~University
], location: "New Haven, CT")

#education_entry("Statistics", "Yale University",
degree_title: "M.A.,", end_date: "2018",
description: [], location: "New Haven, CT")

#education_entry("Philosophy; B.A., Economics", "University of Massachusetts Amherst",
degree_title: "B.A.,", end_date: "2013",
description: [_magna cum laude_, _Phi Beta Kappa_], location: "Amherst, MA")

= Research interests

#[
#set par(hanging-indent: 0em)
Social network cognition: how people map social structure, who they believe is tied to whom, and what these representations mean for influence, diffusion, and collective action in groups and organizations. Related interests: social theory; intergroup boundaries, coordination, and conflict. Methods: computational social science, causal inference, and experiments.
]

= Publications

== Peer-reviewed articles

*Eric Feltham*, Laura Forastiere, and Nicholas Christakis. "Cognitive representations of social networks in isolated villages". _Nature Human Behaviour_ 9, 1737–1753 (2025). #link("https://doi.org/10.1038/s41562-025-02221-6")
- Selected for a "Research Briefing" feature by _Nature Human Behaviour_. #link("https://doi.org/10.1038/s41562-025-02222-5")
- Featured in Phys.org (#link("https://phys.org/news/2025-06-biases-people-mentally-social-community.html")["Biases shape how people mentally represent social ties in their community, study suggests"], June 2025)

*Eric Feltham*, Laura Forastiere, Marcus Alexander, Nicholas Christakis. "Mass gatherings for political expression had no discernible association with the local course of the COVID-19 pandemic in the USA in 2020 and 2021". _Nature Human Behaviour_ 7, 1708–1728 (2023). #link("https://doi.org/10.1038/s41562-023-01654-1")
- Featured in _FiveThirtyEight_.

Philipp Homan, Ifat Levy, *Eric Feltham*, Charles Gordon, Jingchu Hu, Jian Li, Robert H. Pietrzak, Steven Southwick, John H. Krystal, Ilan Harpaz-Rotem, Daniela Schiller. "Neural computations of threat in the aftermath of combat trauma". _Nature Neuroscience_ 22, 470–476 (2019). #link("https://doi.org/10.1038/s41593-018-0315-x")

== Book chapters

Emily Erikson and *Eric Feltham*. "Structure". In #link("https://www.e-elgar.com/shop/usd/research-handbook-on-analytical-sociology-9781789906844.html")[_Research Handbook on Analytical Sociology_]. Cheltenham, UK: Edward Elgar Publishing (2021).

Emily Erikson and *Eric Feltham*. "Historical Network Research". In _Oxford Handbook of Social Networks_. New York: Oxford UP (2020). #link("https://doi.org/10.1093/oxfordhb/9780190251765.001.0001")

= Working papers

*Eric Feltham* and Nicholas Christakis. "Cognitive Expectations of Homophily in Village Social Networks". Under review. SocArXiv preprint (2026). #link("https://osf.io/preprints/socarxiv/z4nyq_v3")

*Eric Feltham*. "FormulaCompiler.jl and Margins.jl: Efficient Marginal Effects in Julia". Under review. arXiv preprint (2026). #link("https://arxiv.org/abs/2601.07065")

*Eric Feltham*. "Signal Degradation without Convergence: Scale Relevance and Partisan Boundary Investment". (draft available upon request)

*Eric Feltham*. "The Fall of White Americans' Implicit Racial Bias Split in 2016 Along the Geography of Manufacturing Decline". (draft available upon request)

*Eric Feltham* and Nicholas Christakis. "Seeing Structure Similarly". (draft available upon request)

= Research in progress

*Eric Feltham*. "The Social and Cultural Context of Social Network Cognition".

*Eric Feltham*, Laura Forastiere, Johan Ugander, and Nicholas Christakis. "Off-Policy Evaluation with Cognitive Social Structures".

*Eric Feltham* and Nicholas Christakis. "The Networked Climate Game".

*Eric Feltham*. "Off the Party Menu: Beliefs and Within-Party Hostility, 1972–2024".

Dominik Duell, *Eric Feltham*, Nicholas Christakis. "Revolutions _in silico_".

*Eric Feltham*. "TSCSMethods.jl: Extended Matching for Generalized Difference-in-Differences with Time-Series Cross-Sectional Data".

// *Eric Feltham*. "Sampling Cognitive Social Structures".

// *Eric Feltham*. "Positive Predictive Bias: A Simple Nonparametric Alternative to c in Signal Detection".

// *Eric Feltham* and Nicholas Christakis. "Risk Attitudes and Network Structure in Honduras".

// *Eric Feltham*. "Identity and Polarization".

== Book project

"Cognizing Social Networks" (working title). Manuscript in preparation; proposal under review.

= Grants

#work_entry([Research Grant (R01), "Characterizing Individuals' Cognitive Maps of their Village Social Networks"], "National Institutes of Health, The National Institute on Aging and the Office of Behavioral and Social Sciences Research", end_date: "2022", tasks: (
  [Award: \$3,226,809 over 4 years. PI: Dr. Nicholas Christakis. Role: lead author of proposal, research design, and analysis plan.],
)
)

#work_entry(["Assessing the Hazard of Elections During the COVID-19 Pandemic"], "Robert Wood Johnson Foundation", end_date: "2020", tasks: (
  [Award: \$350,000. PI: Dr. Nicholas Christakis. Role: lead author of proposal, research design, and analysis plan.],
)
)

= Honors and awards

#work_entry("Sussman Prize for best dissertation in the past two years", "Yale Department of Sociology, New Haven, CT", end_date: "2024", tasks: ())

#work_entry("Commonwealth Honors College Scholar with Greatest Distinction", [University of Massachusetts Amherst, Amherst, MA], end_date: "2013", tasks: ())

= Invited talks

#block(breakable: false)[
*"Cognizing Social Networks"*
- *Santa Fe Institute*, April 2026
- *Stanford Graduate School of Business*, Organizational Behavior Area, November 2025
- *Harvard University*, Department of Psychology (Cognition, Brain, Behavior Seminar), September 2025
- *Yale University*, Department of Sociology (Sussman Award Lecture), May 2025
]

== Other talks

- *Yale University*, Human Nature Lab --- "Expecting Homophily", January 2026
- *University of Iowa*, Department of Sociology (Social Networks Workshop) --- "Cognizing Social Networks", November 2023
- *Yale University*, Center for Empirical Research on Stratification and Inequality --- "Modeling the Effect of Identity on Polarization", January 2019
- *Yale Institute for Network Science* --- "Experiments on Observational Learning", August 2018

= Conference presentations

*"Cognizing Social Networks"*
- #link("https://ic2s2-2025.org")[International Conference on Computational Social Science], Norrköping, Sweden, July 2025
- #link("https://www.asanet.org/annual-meeting/")[Annual Meeting of the American Sociological Association] (Sections on Social Psychology and Mathematical Sociology), Montréal, QC, August 2024
- #link("https://sn.ethz.ch/events/dualityat50.html")[Duality\@50: Making progress and looking forward], ETH Zürich, Ascona, Switzerland, April 2024
- Implementation and Dissemination Science Workshop, Copán, Honduras, June 2023

*"Expecting Homophily"*
- #link("https://www.asanet.org/annual-meeting/")[Annual Meeting of the American Sociological Association] (Sections on Social Psychology and Mathematical Sociology), New York City, August 2026
- #link("https://ic2s2-2026.org")[International Conference on Computational Social Science], Burlington, VT, July 2026
- #link("https://www.insna.org/events/sunbelt-2026---daytona-beach")[Annual Conference of the International Network for Social Network Analysis (Sunbelt 2026)], Daytona Beach, FL, June 2026
- #link("https://program.netsci2026.com")[International Conference on Network Science (NetSci 2026)], Boston, MA, June 2026
- #link("https://inas.sociology.columbia.edu")[Annual Conference of the International Network of Analytical Sociology], Columbia University, June 2025

Megha Chawla, Philipp Homan, Charles Gordon, *Eric Feltham*, Daniela Schiller, Ilan Harpaz-Rotem, Ifat Levy. *"Cortical thickness and volume of the right posterior parietal cortex predict individual learning rate in
healthy adults"*
- Society for Neuroscience, San Diego, CA, 2018

= Software

*#link("https://github.com/human-nature-lab/TSCSMethods.jl")[TSCSMethods.jl]* (sole author)
- Performs nonparametric generalized difference-in-differences estimation, with covariate matching

*#link("https://github.com/emfeltham/FormulaCompiler.jl")[FormulaCompiler.jl]* (sole author)
- Provides a unified, typed compilation framework for statistical model formulas in Julia

*#link("https://github.com/emfeltham/Margins.jl")[Margins.jl]* (sole author)
- Computes marginal effects for generalized linear models and mixed models

*#link("https://github.com/human-nature-lab/SamplingPerceivedNetworks.jl")[SamplingPerceivedNetworks.jl]* (sole author)
- Implements a sampling procedure for "cognitive social structures" data collection

// *#link("https://github.com/emfeltham/Typst.jl")[Typst.jl]* (sole author)
// - Implements an interface from the Julia language to the mark-up language Typst for academic writing

// *#link("https://github.com/JuliaGraphs/GraphDataFrameBridge.jl")[GraphDataFrameBridge.jl]* (contributor)
// - Contributed functions to process network data

= Other writing

"Social network cognition among isolated villagers reveals distinct patterns of bias". _Nature Human Behaviour Research Briefing_ (June 2025). (Invited contribution by Nature Human Behaviour)

*Eric Feltham* and Nicholas Christakis. "Rapid research with a pandemic bearing down: Studying the impact of mass gatherings on the course of COVID-19". _Springer Nature Communities_ (2023). (Invited contribution to "Behind the Paper" series for the Springer Nature Social Sciences online community)

*Eric Feltham* and Nicholas Christakis. "Voting In The 2020 Primaries Didn't Worsen The COVID-19 Pandemic". _FiveThirtyEight_ (2020).

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

- Ashley Oaks (Statistics & Data Science, Yale University, PhD)
- Shriya Muthukumar (Computer Science & Economics, University of Chicago, 2029)
- Aslı Yüksel (Psychology, Swarthmore College, 2026)
- Karen Gao (Computer Science & Psychology, Yale College, 2027)
- Breanna Nguyen (Cognitive Science, Yale College, 2025)
- Kaity Chandrika (Sociology, Yale College, 2025)
- Justice Harasha (Economics & Mathematics, Yale College, 2024)
- Kayla Morgan (Cognitive Science, Yale College, 2024)
- Benjamin Snyder (Economics, Yale College, 2022)

= Research experience

#work_entry("Graduate Researcher", "Yale Institute for Network Science and Human Nature Lab, New Haven, CT", start_date: "2016", end_date: "2023", tasks: (
  [Designed and led large-scale data collection and analysis efforts on individuals' perceptions of social network structure with over 10,000 people in 82 villages in rural Honduras],
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

#work_entry("Graduate Researcher", "University of Chicago, Chicago, IL", end_date: "2018", tasks: (
  [Part of a team on the grant "Social MIND: Social Machine Intelligence for Novel Discovery", with Drs. James Evans and Michael Franklin of the University of Chicago and Dr. Joshua Tenenbaum of MIT],
)
)

#work_entry("Research Assistant", "Levy and Harpaz-Rotem Labs, Yale School of Medicine, New Haven, CT", start_date: "2014", end_date: "2016", tasks: ())

#work_entry("Research Assistant", "Schiller Affective Neuroscience Lab, Icahn School of Medicine at Mount Sinai, New York, NY", end_date: "2014", tasks: ())

= Professional service

#[
#set par(hanging-indent: 0em)
*Memberships.* American Sociological Association; International Network for Social Network Analysis \
*Ad hoc reviews.* Proceedings of the National Academy of Sciences of the United States of America; PNAS Nexus; Sociological Science; Risk Analysis; Policy Analysis; Group Processes & Intergroup Relations; Rationality and Society; Yale Undergraduate Research Journal
]

= Skills

*Programming.* Julia, R, MATLAB, Python. *Languages.* Spanish (basic), French (basic)

= Leadership & service

#work_entry("Campaign Coordinator", "Students for a Just and Stable Future, Boston, MA", start_date: "2010", end_date: "2011", tasks: (
  [Built a statewide student climate coalition; contributed to MA climate policy],
)
)

#work_entry("Team Leader", "Better Future Project, Boston, MA", start_date: "2010", end_date: "2011", tasks: ())

= References

+ Dr. Peter Bearman, Jonathan R. Cole Professor of the Social Sciences, Columbia University (psb17\@columbia.edu)

+ Dr. Nicholas Christakis, Sterling Professor of Social and Natural Science, Yale University (nicholas.christakis\@yale.edu)

+ Dr. Emily Erikson, Professor of Sociology and (by courtesy) Management, Yale University (emily.erikson\@yale.edu)

+ Dr. Laura Forastiere, Associate Professor of Biostatistics, Yale School of Public Health, Yale University (laura.forastiere\@yale.edu)

+ Dr. Ifat Levy, Elizabeth Mears and House Jameson Professor of Comparative Medicine, Psychology, and Neuroscience, Yale School of Medicine, Yale University (ifat.levy\@yale.edu)
