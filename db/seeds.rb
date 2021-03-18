# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Article.create(title: 'Smart stretch expands hip implant performance',
                    link: 'https://www.chemistryworld.com/news/smart-stretch-expands-hip-implant-performance/3008154.article',
                    summary: 'On a material that offers to lengthen the lifetime of hip implants...')
a2 = Article.create(title: 'Oil collector drums up hope for oceans',
                    link: 'https://www.chemistryworld.com/news/oil-collector-drums-up-hope-for-oceans/3007800.article',
                    summary: 'A two-faced barrel attracts then traps oil spills at speed...')
a3 = Article.create(title: 'Colour-changing graphene skin reveals hidden damage',
                    link: 'https://www.chemistryworld.com/news/colour-changing-graphene-skin-reveals-hidden-damage/3007082.article',
                    summary: 'A coating inspired by fish scales could highlight structural weakness in buildings and vehicles...')
a4 = Article.create(title: 'Spider silk strength is in the loop',
                    link: 'https://www.chemistryworld.com/news/spider-silk-strength-is-in-the-loop/2500408.article',
                    summary: 'Discovery of hidden thread in silk of deadly spider inspires material-toughening strategy...')
a5 = Article.create(title: 'Millitesla magnetic field effects on the photocycle of an animal cryptochrome',
                    link: 'https://www.nature.com/articles/srep42228',
                    summary: 'Photo-induced electron transfer reactions in Drosophila melanogaster cryptochrome are influenced by magnetic fields of a few millitesla...')
a6 = Article.create(title: 'Hydrogel wound sealant simplifies trauma treatment',
                    link: 'https://www.chemistryworld.com/news/hydrogel-wound-sealant-simplifies-trauma-treatment/2500332.article',
                    summary: 'A spray-on bandage that dessolves on demand...')
a7 = Article.create(title: 'Cocaine users sweat over fingerprint analysis',
                    link: 'https://www.chemistryworld.com/news/cocaine-users-sweat-over-fingerprint-analysis/8553.article',
                    summary: 'Surface mass spectrometry quickly detects cocaine metabolites in fingerprints...')
a8 = Article.create(title: 'Mercury-grabbing ionic liquids hit the gas',
                    link: 'http://www.rsc.org/chemistryworld/2015/03/mercury-removal-ionic-liquid-natural-gas',
                    summary: 'Team reveals research behind mercury removal technology developed for natural gas industry...')
a9 = Article.create(title: 'Sensors Cleaned by Light Could Drop Costs of Detecting Pollution or Disease',
                    link: 'http://www.scientificamerican.com/article/sensors-cleaned-by-light-could-drop-costs-of-detecting-pollution-or-disease/',
                    summary: 'Electrodes with new coating shrug off contaminants when stimulated by UV light...')
a10 = Article.create(title: 'Self-cleaning sensors see the light',
                     link: 'http://www.rsc.org/chemistryworld/2015/01/self-cleaning-electrochemical-sensor-ultraviolet-light',
                     summary: 'Overcoming electrode fouling in biomedical and environmental detectors...')
a11 = Article.create(title: 'Broadband cavity-enhanced detection of magnetic field effects in chemical models of a cryptochrome magnetoreceptor',
                     link: 'https://pubs.acs.org/doi/10.1021/jp500732u',
                     summary: 'Broadband cavity-enhanced absorption spectroscopy (BBCEAS) is shown to be a sensitive method for the detection of magnetic field effects...')
a12 = Article.create(title: 'Broadband cavity-enhanced absorption spectroscopy for real time, in situ spectral analysis of microfluidic droplets',
                     link: 'https://doi.org/10.1039/c1lc20854c',
                     summary: 'Broadband cavity-enhanced absorption spectroscopy has been used to record, in real time, the absorption spectrum of microlitre volume aqueous phase droplets within a microfluidic chip assembly...')
a13 = Article.create(title: 'Evanescent wave cavity-based spectroscopic techniques as probes of interfacial processes',
                     link: 'https://pubs.rsc.org/en/content/articlelanding/2011/CS/C0CS00017E#!divAbstract',
                     summary: 'A review of evanescent wave cavity-based spectroscopic techniques...')
a14 = Article.create(title: 'Following radical pair reactions in solution: A step change in sensitivity using cavity ring-down detection',
                     link: 'https://doi.org/10.1021/ja206783t',
                     summary: 'Understanding the physical principles governing the spin-selective and magneto-sensitive yields and kinetics of their reactions is essential in identifying the mechanism governing bird migration...')
a15 = Article.create(title: 'Computational study on the energies and structures of the [H, Si, N, C, S] isomers',
                     link: 'https://doi.org/10.1007/s00214-010-0772-0',
                     summary: 'Computational chemistry methods have been used to study the lowest lying [H, Si, N, C, S] isomers which are of astrochemical interest...')
a16 = Article.create(title: 'Following interfacial kinetics in real time using broadband evanescent wave cavity-enhanced absorption spectroscopy: A comparison of light-emitting diodes and supercontinuum sources',
                     link: 'https://doi.org/10.1039/b916712a',
                     summary: 'A white light-emitting diode (LED) with emission between 420 and 700 nm and a supercontinuum (SC) source with emission between 450 and 2500 nm have been compared...')
a17 = Article.create(title: 'Science and technology roadmap for graphene, related two-dimensional crystals, and hybrid systems',
                     link: 'https://pubs.rsc.org/en/content/articlelanding/2015/NR/C4NR01600A#!divAbstract',
                     summary: 'The science and technology roadmap for graphene, related two-dimensional crystals, and hybrid systems...')
a18 = Article.create(title: 'Build a simple crime-info web app using JavaScript',
                     link: 'https://srt-neil.medium.com/build-a-simple-crime-info-web-app-using-javascript-d6997c1fff89',
                     summary: 'How to build a very simple web app using JavaScript that consumes data from the UK police API...')

journalism = Category.create(name: 'Journalism')
mat_sci = Category.create(name: 'Materials science')
environment = Category.create(name: 'Environment')
research = Category.create(name: 'Scientific Research')
medium = Category.create(name: 'On Medium')
sensors = Category.create(name: 'Sensors and analytical science')
computational = Category.create(name: 'Computational chemistry')
reviews = Category.create(name: 'Review articles')

journalism.articles << [a1, a2, a3, a4, a6, a7, a8, a9, a10]
mat_sci.articles << [a1, a2, a3, a4, a6, a17]
environment.articles << [a2]
research.articles << [a5, a11, a12, a13, a14, a15, a16, a17]
medium.articles << [a18]
sensors.articles << [a7, a9, a10, a11, a12, a13, a14, a16]
computational.articles << [a15]
reviews.articles << [a13, a17]
