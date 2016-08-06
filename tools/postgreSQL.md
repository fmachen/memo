PostgreSQL en 2014
==================

### SGBDR

depuis 70's et répond à des problématiques toujours d'actualité en 2014 :
* accès concurrent aux données avec des garanties :
  * A tomique, ça passe ou ça casse (commit ou rollback des transactions)
  * C ohérente, on retrouve bien ce qu'on y met (type compris)
  * I solé, tant que le commit n'est pas fait, personne n'est touché
  * D urabilité, on fait des transactions et pendant l'opération on débranche le serveur ; rien ne doit être perdu sinon ça ne vaut rien. Idem, si pas de backup a chaud, ça ne vaut rien
* (haute)disponibilité des services et des données (sympa de se co à un noeud mais si les données ne sont plus là ... d'où les backup à chaud)

### PostgreSQL et Types de données

#### Exemple

Le typage dans la base simplifie le traitement en php. PHP n'est pas le niveau pour gérer ces contraintes, plusieurs app sur la même base PHP ne peut pas gérer.

`
CREATE TABLE reservation (
  during tsrange NOT NULL,
  EXCLUDE USING gist (during WITH &&)
);
`

tsrange est un interval de timestamp,
gist signifie Generalized Search Tree
&& signifie overlap (superposition, intervals qui se croisent)
=> garantie, malgrés les accès concurrents, que deux intervals ne se croiseront pas

`
CREATE TABLE circles (
  c circle,
  EXCLUDE USING gist (c WITH &&)
);
`

retrouver une position d'après une ip

`
select iprange, locid
from geolite.blocks
where iprange >>= '91.121.37.122';

          iprange          | locid
---------------------------+-------
 91.121.0.0-91.121.159.255 |  75
(1 row)
Time : 1.220 ms
`

avec une jointure

`
select *
from geolite.blocks
join geolite.location using(locid)
where iprange >>= '74.125.195.147';

-[ RECORD 1 ]----------------------------
locid       | 2703
iprange     | 74.125.189.24-74.125.255.255
country     | US
region      | CA
city        | Mountain View
postalcode  | 94043
location    | (-122.0574,37.4192)
metrocode   | 807
areacode    | 650

Time: 1.335 ms
`

Le SQL sert à décrire ce que l'on veut. (on décrit le problème qu'on a, pas la solution pour le résoudre)
PostgreSQL se charge de les stocker et d'aller les chercher à la demande.

`
create extension cube;
create extension earthdistance;

select name, pos <@> point(-6.25,53.34) miles
from pubnames
order by pos <-> point(-6.25,53.34)
limit 3;

  name  | miles
--------+-------
Ned's   | 0.06
Sub Lo  | 0.07
O'Neil  | 0.12
(3 rows)

Time: 1.335 ms
`

également des types composites : tableau, xml, json
et des fonctions associées (aggreg, xpath ...)

### Requêtes

CTE : with

window fonction

returning





### INDEX

index spécifique par type de données
B-tree R-tree

INDEX
INDEX PARTIEL avec une clause WHERE
INDEX FONCTIONNEL, on indexe pas les données, mais le résultat des données passé dans une fonction
