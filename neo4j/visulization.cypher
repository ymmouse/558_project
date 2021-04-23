LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS line
MERGE (p:person{id:line.id, name:line.name, blood_status:line.blood_status, hair_color:line.hair_color, eye_color:line.eye_color, patronus:line.patronus, wand:line.wand, occupation:line.occupation, loyalty:line.loyalty, house:line.house});

LOAD CSV WITH HEADERS FROM "file:///enemies.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ENEMY]->(to);

LOAD CSV WITH HEADERS FROM "file:///FATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_RELATIVE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);

LOAD CSV WITH HEADERS FROM "file:///HUSBAND.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:HUSBAND]->(to);

LOAD CSV WITH HEADERS FROM "file:///DAUGHTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:DAUGHTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///SON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SON]->(to);

LOAD CSV WITH HEADERS FROM "file:///FATHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FATHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///MOTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MOTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///SISTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SISTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///CO_BROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:CO_BROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///NEPHEW_OR_GODSON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NEPHEW_OR_GODSON]->(to);

LOAD CSV WITH HEADERS FROM "file:///NEPHEW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NEPHEW]->(to);

LOAD CSV WITH HEADERS FROM "file:///NIECE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NIECE]->(to);

LOAD CSV WITH HEADERS FROM "file:///BROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_ANCESTOR.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_ANCESTOR]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_AUNT_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_AUNT_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_FIRST_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_ANCESTORS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_ANCESTORS]->(to);

LOAD CSV WITH HEADERS FROM "file:///OUSE_OF_LACK.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OUSE_OF_LACK]->(to);

LOAD CSV WITH HEADERS FROM "file:///SISTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SISTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///DAUGHTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:DAUGHTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDSON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDSON]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDDAUGHTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDDAUGHTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///NIECE_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NIECE_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_NIECES_OR_NEPHEWS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_NIECES_OR_NEPHEWS]->(to);

LOAD CSV WITH HEADERS FROM "file:///IN_LAWS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:IN_LAWS]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GREAT_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GREAT_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GREAT_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GREAT_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GREAT_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GREAT_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GREAT_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GREAT_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_UNCLE_OR_GODFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_UNCLE_OR_GODFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUNT_BY_MARRIAGE_OR_GODMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUNT_BY_MARRIAGE_OR_GODMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUNT_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUNT_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_SISTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_SISTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///WIFE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WIFE]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDDAUGHTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDDAUGHTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_GRANDSON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_GRANDSON]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_GRANDDAUGHTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_GRANDDAUGHTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///OSSIBLE_NEPHEW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OSSIBLE_NEPHEW]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_AUNT_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_AUNT_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///DISTANT_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:DISTANT_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///OUSE_OF_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OUSE_OF_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///HARLUS_OTTER_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:HARLUS_OTTER_]->(to);

LOAD CSV WITH HEADERS FROM "file:///NE_LACK.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NE_LACK]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_UNCLE_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_UNCLE_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///COUSIN_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:COUSIN_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///FIRST_COUSINS_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FIRST_COUSINS_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///OTTER_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OTTER_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///DISTANT_RELATIVES.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:DISTANT_RELATIVES]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///YOUNGER_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///YOUNGER_SISTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:YOUNGER_SISTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_PATERNAL_UNCLES.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_PATERNAL_UNCLES]->(to);

LOAD CSV WITH HEADERS FROM "file:///NCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///OUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///EASLEY_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EASLEY_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///OLDER_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OLDER_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///ATERNAL_UNCLES.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ATERNAL_UNCLES]->(to);

LOAD CSV WITH HEADERS FROM "file:///OSSIBLE_GREAT_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OSSIBLE_GREAT_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///ATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///OTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///BROTHER_OR_BROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:BROTHER_OR_BROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///ECOND_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ECOND_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///EPHEW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EPHEW]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_BROTHERS_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_BROTHERS_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///SON_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SON_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLY]->(to);

LOAD CSV WITH HEADERS FROM "file:///NE_REWETT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NE_REWETT]->(to);

LOAD CSV WITH HEADERS FROM "file:///OLDER_TWIN_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OLDER_TWIN_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///LACK_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:LACK_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///YOUNGER_TWIN_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:YOUNGER_TWIN_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///T_LEAST_TWO_PATERNAL_UNCLES.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:T_LEAST_TWO_PATERNAL_UNCLES]->(to);

LOAD CSV WITH HEADERS FROM "file:///RANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:RANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///IRST_HUSBAND.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:IRST_HUSBAND]->(to);

LOAD CSV WITH HEADERS FROM "file:///ECOND_HUSBAND.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ECOND_HUSBAND]->(to);

LOAD CSV WITH HEADERS FROM "file:///THIRD_HUSBAND.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:THIRD_HUSBAND]->(to);

LOAD CSV WITH HEADERS FROM "file:///NE_SON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NE_SON]->(to);

LOAD CSV WITH HEADERS FROM "file:///_BROTHERS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:_BROTHERS]->(to);

LOAD CSV WITH HEADERS FROM "file:///ROTHER_OR_BROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ROTHER_OR_BROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///ALE_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ALE_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///_FEMALE_COUSINS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:_FEMALE_COUSINS]->(to);

LOAD CSV WITH HEADERS FROM "file:///EMALE_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EMALE_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUNT_OR_AUNT_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUNT_OR_AUNT_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUNT_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUNT_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///ATHER_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ATHER_]->(to);

LOAD CSV WITH HEADERS FROM "file:///TEPFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:TEPFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///EVERAL_HALF_SIBLINGS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EVERAL_HALF_SIBLINGS]->(to);

LOAD CSV WITH HEADERS FROM "file:///TWIN_SISTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:TWIN_SISTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///IECES_AND_NEPHEWS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:IECES_AND_NEPHEWS]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_PATERNAL_ANCESTOR.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_PATERNAL_ANCESTOR]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_PATERNAL_RELATIVE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_PATERNAL_RELATIVE]->(to);

LOAD CSV WITH HEADERS FROM "file:///UPIN_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:UPIN_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///USBAND.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:USBAND]->(to);

LOAD CSV WITH HEADERS FROM "file:///ON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ON]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUGHTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUGHTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///ATHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ATHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///OTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///ROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///ARIOUS_EASLEY_IN_LAWS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ARIOUS_EASLEY_IN_LAWS]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_HALF_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_HALF_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///STEP_FATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:STEP_FATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_RELATION.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_RELATION]->(to);

LOAD CSV WITH HEADERS FROM "file:///UNCLE_BY_ARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:UNCLE_BY_ARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///RANGER_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:RANGER_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///ALLEGED_RELATIVE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ALLEGED_RELATIVE]->(to);

LOAD CSV WITH HEADERS FROM "file:///HREE_EX_WIVES.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:HREE_EX_WIVES]->(to);

LOAD CSV WITH HEADERS FROM "file:///EVENTEEN_RUMOURED_CHILDREN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EVENTEEN_RUMOURED_CHILDREN]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_OR_MATERNAL_GREAT_GREAT_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_OR_MATERNAL_GREAT_GREAT_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_OR_MATERNAL_GREAT_GREAT_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_OR_MATERNAL_GREAT_GREAT_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GREAT_GRANDFATHER_OR_MATERNAL_GREAT_GREAT_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GREAT_GRANDFATHER_OR_MATERNAL_GREAT_GREAT_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GREAT_GRANDFATHER_OR_PATERNAL_GREAT_GREAT_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GREAT_GRANDFATHER_OR_PATERNAL_GREAT_GREAT_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GRANDFATHER_OR_MATERNAL_FIRST_COUSIN_TWICE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GRANDFATHER_OR_MATERNAL_FIRST_COUSIN_TWICE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GRANDFATHER_OR_PATERNAL_FIRST_COUSIN_TWICE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GRANDFATHER_OR_PATERNAL_FIRST_COUSIN_TWICE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///FATHER_OR_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FATHER_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///MOTHER_OR_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MOTHER_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///BROTHER_OR_THIRD_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:BROTHER_OR_THIRD_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_AUNT_OR_MATERNAL_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_AUNT_OR_MATERNAL_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_UNCLE_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_UNCLE_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_UNCLE_OR_PATERNAL_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_UNCLE_OR_PATERNAL_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_FIRST_COUSIN_OR_PATERNAL_THIRD_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN_OR_PATERNAL_THIRD_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_FIRST_COUSIN_ONCE_REMOVED_OR_PATERNAL_THIRD_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN_ONCE_REMOVED_OR_PATERNAL_THIRD_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_FIRST_COUSIN_TWICE_REMOVED_OR_PATERNAL_THIRD_COUSIN_TWICE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN_TWICE_REMOVED_OR_PATERNAL_THIRD_COUSIN_TWICE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///DESCENDANT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:DESCENDANT]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_DESCENDANT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_DESCENDANT]->(to);

LOAD CSV WITH HEADERS FROM "file:///ONKS_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ONKS_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_DISTANT_RELATIVE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_DISTANT_RELATIVE]->(to);

LOAD CSV WITH HEADERS FROM "file:///FIANCE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FIANCE]->(to);

LOAD CSV WITH HEADERS FROM "file:///HILD.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:HILD]->(to);

LOAD CSV WITH HEADERS FROM "file:///CAMANDER_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:CAMANDER_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///RANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:RANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///ISTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ISTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///ROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUGHTER_OR_DAUGHTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUGHTER_OR_DAUGHTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///RANDDAUGHTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:RANDDAUGHTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///RANDSON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:RANDSON]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///INE_GENERATIONS_OF_WITCHES_AND_WARLOCKS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:INE_GENERATIONS_OF_WITCHES_AND_WARLOCKS]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GREAT_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GREAT_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///MATERNAL_GREAT_UNCLE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:MATERNAL_GREAT_UNCLE]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///COUSINS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:COUSINS]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GRANDMOTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GRANDMOTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///OTHER_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OTHER_]->(to);

LOAD CSV WITH HEADERS FROM "file:///EX_HUSBAND.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EX_HUSBAND]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_GREAT_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_GREAT_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///IFE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:IFE]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUGHTER_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUGHTER_]->(to);

LOAD CSV WITH HEADERS FROM "file:///ANCESTOR.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ANCESTOR]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDFATHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDFATHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDMOTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDMOTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_OLDER_SISTERS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_OLDER_SISTERS]->(to);

LOAD CSV WITH HEADERS FROM "file:///DISTANT_RELATIVE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:DISTANT_RELATIVE]->(to);

LOAD CSV WITH HEADERS FROM "file:///AVIES_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AVIES_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///SPOUSE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SPOUSE]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_ANCESTOR.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_ANCESTOR]->(to);

LOAD CSV WITH HEADERS FROM "file:///OOT_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OOT_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///ISTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ISTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///ATERNAL_AUNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ATERNAL_AUNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///NYDE_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NYDE_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_FIRST_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_FIRST_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///LUGHORN_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:LUGHORN_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///IX_STEPFATHERS__.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:IX_STEPFATHERS__]->(to);

LOAD CSV WITH HEADERS FROM "file:///OSIER_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OSIER_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_FATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_FATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_UNCLE_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_UNCLE_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_FIRST_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_FIRST_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///UNT.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:UNT]->(to);

LOAD CSV WITH HEADERS FROM "file:///FIRST_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FIRST_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///ALFOY_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ALFOY_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///REENGRASS_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:REENGRASS_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///GREAT_NEPHEW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GREAT_NEPHEW]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRANDAUGHTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRANDAUGHTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GREAT_GREAT_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GREAT_GREAT_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_GREAT_GREAT_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_GREAT_GREAT_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_UNCLE_BY_MARRIAGE_OR_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_UNCLE_BY_MARRIAGE_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_FIRST_COUSIN_OR_THIRD_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_FIRST_COUSIN_OR_THIRD_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///RELATIVE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:RELATIVE]->(to);

LOAD CSV WITH HEADERS FROM "file:///STEPDAUGHTER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:STEPDAUGHTER]->(to);

LOAD CSV WITH HEADERS FROM "file:///ESTRANGE_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ESTRANGE_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_SON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_SON]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_DAUGHTER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_DAUGHTER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///STEPMOTHER_OR_FIRST_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:STEPMOTHER_OR_FIRST_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///HALF_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:HALF_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///FIANC.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FIANC]->(to);

LOAD CSV WITH HEADERS FROM "file:///AMA_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AMA_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///NEPHEW_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NEPHEW_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_RELATIVES.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_RELATIVES]->(to);

LOAD CSV WITH HEADERS FROM "file:///NNAMED_ANCESTOR.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NNAMED_ANCESTOR]->(to);

LOAD CSV WITH HEADERS FROM "file:///GRAND_NIECE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:GRAND_NIECE]->(to);

LOAD CSV WITH HEADERS FROM "file:///ADOPTIVE_GRAND_NEPHEW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ADOPTIVE_GRAND_NEPHEW]->(to);

LOAD CSV WITH HEADERS FROM "file:///AUNT_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:AUNT_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///TWIN_BROTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:TWIN_BROTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///LINT_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:LINT_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///ARLEY_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ARLEY_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///LIKELY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:LIKELY]->(to);

LOAD CSV WITH HEADERS FROM "file:///ALE_PATERNAL_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ALE_PATERNAL_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///HUSBAND_OR_SECOND_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:HUSBAND_OR_SECOND_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///SON_OR_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SON_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///FATHER_IN_LAW_OR_FIRST_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:FATHER_IN_LAW_OR_FIRST_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///SISTER_IN_LAW_OR_SECOND_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SISTER_IN_LAW_OR_SECOND_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///WIFE_OR_SECOND_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WIFE_OR_SECOND_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///BROTHER_IN_LAW_OR_SECOND_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:BROTHER_IN_LAW_OR_SECOND_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_GRANDFATHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_GRANDFATHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_GRANDMOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_GRANDMOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_MOTHER.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_MOTHER]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_GRANDSONS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_GRANDSONS]->(to);

LOAD CSV WITH HEADERS FROM "file:///SISTER_IN_LAW_OR_PATERNAL_SECOND_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SISTER_IN_LAW_OR_PATERNAL_SECOND_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///NEPHEW_OR_PATERNAL_SECOND_COUSIN_ONCE_REMOVED.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:NEPHEW_OR_PATERNAL_SECOND_COUSIN_ONCE_REMOVED]->(to);

LOAD CSV WITH HEADERS FROM "file:///REWETT_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:REWETT_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_AUNT_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_AUNT_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///ALE_PATERNAL_COUSINS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ALE_PATERNAL_COUSINS]->(to);

LOAD CSV WITH HEADERS FROM "file:///EMALE_PATERNAL_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EMALE_PATERNAL_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///ON_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ON_]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_GRANDSON.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_GRANDSON]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_DAUGHTERS_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_DAUGHTERS_]->(to);

LOAD CSV WITH HEADERS FROM "file:///IECE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:IECE]->(to);

LOAD CSV WITH HEADERS FROM "file:///EPHEWS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EPHEWS]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_NEPHEW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_NEPHEW]->(to);

LOAD CSV WITH HEADERS FROM "file:///ROUCH_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ROUCH_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_MALE_FIRST_COUSINS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_MALE_FIRST_COUSINS]->(to);

LOAD CSV WITH HEADERS FROM "file:///EMALE_FIRST_COUSIN.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EMALE_FIRST_COUSIN]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_FATHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_FATHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///POSSIBLE_BROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:POSSIBLE_BROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///SECOND_COUSIN_OR_BROTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:SECOND_COUSIN_OR_BROTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_OLDER_SONS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_OLDER_SONS]->(to);

LOAD CSV WITH HEADERS FROM "file:///EPHEW_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:EPHEW_]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_NIECES_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_NIECES_]->(to);

LOAD CSV WITH HEADERS FROM "file:///PATERNAL_FIRST_COUSINS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:PATERNAL_FIRST_COUSINS]->(to);

LOAD CSV WITH HEADERS FROM "file:///UNCLE_BY_MARRIAGE.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:UNCLE_BY_MARRIAGE]->(to);

LOAD CSV WITH HEADERS FROM "file:///WO_NEPHEWS.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:WO_NEPHEWS]->(to);

LOAD CSV WITH HEADERS FROM "file:///ONGBOTTOM_FAMILY.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:ONGBOTTOM_FAMILY]->(to);

LOAD CSV WITH HEADERS FROM "file:///OTHER_OR_MOTHER_IN_LAW.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OTHER_OR_MOTHER_IN_LAW]->(to);

LOAD CSV WITH HEADERS FROM "file:///REAT_GRANDFATHER_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:REAT_GRANDFATHER_]->(to);

LOAD CSV WITH HEADERS FROM "file:///OSSIBLE_AUNTS_.csv" AS line
MATCH (from:person{id:line.src}),(to:person{id:line.dst})
MERGE (from)-[r:OSSIBLE_AUNTS_]->(to);

