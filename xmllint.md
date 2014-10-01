xmllint
=======

Indenter un fichier

`xmllint data.xml --format`

Valider un fichier XML

* contenant une DTD

`xmllint data.xml --valid`

* avec une DTD externe :

`xmllint data.xml --dtdvalid data.dtd  --noout`

* avec un schéma XML

`xmllint data.xml --schema schema.xsd  --noout`

* avec du RelaxNG

`xmllint data.xml --relaxng RNGnotice.rng --noout`

Shell interactif pour naviguer dans le fichier

`xmllint --shell data.xml`
