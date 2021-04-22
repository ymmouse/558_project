LOAD CSV WITH HEADERS FROM "file:///nodes.csv" AS line
MERGE (p:person{id:line.id, name:line.name, blood_status:line.blood_status, hair_color:line.hair_color, eye_color:line.eye_color, patronus:line.patronus, wand:line.wand, occupation:line.occupation, loyalty:line.loyalty, house:line.house});

MATCH (from:person{id:'1'}),(to:person{id:'58'})
MERGE (from)-[r:DAUGHTER]->(to);
MATCH (from:person{id:'1'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER_IN_LAW]->(to);
MATCH (from:person{id:'1'}),(to:person{id:'6'})
MERGE (from)-[r:NEPHEW_OR_GODSON]->(to);
MATCH (from:person{id:'1'}),(to:person{id:'175'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'1'}),(to:person{id:'4'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'1'}),(to:person{id:'17'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'4'}),(to:person{id:'8'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'4'}),(to:person{id:'24'})
MERGE (from)-[r:MATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'4'}),(to:person{id:'20'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'4'}),(to:person{id:'18'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'4'}),(to:person{id:'17'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'4'}),(to:person{id:'58'})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN]->(to);
MATCH (from:person{id:'5'}),(to:person{id:'7'})
MERGE (from)-[r:FATHER_IN_LAW]->(to);
MATCH (from:person{id:'6'}),(to:person{id:'7'})
MERGE (from)-[r:PATERNAL_GREAT_GRANDFATHER]->(to);
MATCH (from:person{id:'6'}),(to:person{id:'24'})
MERGE (from)-[r:MATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'6'}),(to:person{id:'58'})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN]->(to);
MATCH (from:person{id:'6'}),(to:person{id:'17'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'6'}),(to:person{id:'20'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'7'}),(to:person{id:'8'})
MERGE (from)-[r:SON]->(to);
MATCH (from:person{id:'8'}),(to:person{id:'7'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'9'}),(to:person{id:'7'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'9'}),(to:person{id:'8'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'9'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER_IN_LAW]->(to);
MATCH (from:person{id:'9'}),(to:person{id:'20'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'9'}),(to:person{id:'17'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'9'}),(to:person{id:'58'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'12'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'12'}),(to:person{id:'20'})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);
MATCH (from:person{id:'12'}),(to:person{id:'18'})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);
MATCH (from:person{id:'12'}),(to:person{id:'17'})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);
MATCH (from:person{id:'12'}),(to:person{id:'58'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'13'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'13'}),(to:person{id:'18'})
MERGE (from)-[r:OLDER_BROTHER]->(to);
MATCH (from:person{id:'13'}),(to:person{id:'17'})
MERGE (from)-[r:OLDER_BROTHER]->(to);
MATCH (from:person{id:'13'}),(to:person{id:'58'})
MERGE (from)-[r:DAUGHTER]->(to);
MATCH (from:person{id:'14'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'14'}),(to:person{id:'17'})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);
MATCH (from:person{id:'14'}),(to:person{id:'58'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'15'}),(to:person{id:'24'})
MERGE (from)-[r:HUSBAND]->(to);
MATCH (from:person{id:'15'}),(to:person{id:'17'})
MERGE (from)-[r:SON]->(to);
MATCH (from:person{id:'15'}),(to:person{id:'58'})
MERGE (from)-[r:GRANDDAUGHTER]->(to);
MATCH (from:person{id:'17'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'17'}),(to:person{id:'58'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'18'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'18'}),(to:person{id:'17'})
MERGE (from)-[r:YOUNGER_TWIN_BROTHER]->(to);
MATCH (from:person{id:'19'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'19'}),(to:person{id:'17'})
MERGE (from)-[r:OLDER_BROTHER]->(to);
MATCH (from:person{id:'19'}),(to:person{id:'58'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'20'}),(to:person{id:'24'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'20'}),(to:person{id:'17'})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);
MATCH (from:person{id:'20'}),(to:person{id:'6'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'20'}),(to:person{id:'175'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'20'}),(to:person{id:'4'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'20'}),(to:person{id:'58'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'23'}),(to:person{id:'23'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'24'}),(to:person{id:'17'})
MERGE (from)-[r:SON]->(to);
MATCH (from:person{id:'24'}),(to:person{id:'58'})
MERGE (from)-[r:GRANDDAUGHTER]->(to);
MATCH (from:person{id:'26'}),(to:person{id:'27'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'27'}),(to:person{id:'26'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'29'}),(to:person{id:'84'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'30'}),(to:person{id:'30'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'32'}),(to:person{id:'91'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'33'}),(to:person{id:'125'})
MERGE (from)-[r:TWIN_SISTER]->(to);
MATCH (from:person{id:'34'}),(to:person{id:'180'})
MERGE (from)-[r:YOUNGER_SISTER]->(to);
MATCH (from:person{id:'35'}),(to:person{id:'36'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'36'}),(to:person{id:'35'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'37'}),(to:person{id:'37'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'37'}),(to:person{id:'38'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'38'}),(to:person{id:'37'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'38'}),(to:person{id:'37'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'42'}),(to:person{id:'43'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'43'}),(to:person{id:'42'})
MERGE (from)-[r:POSSIBLE_PATERNAL_RELATIVE]->(to);
MATCH (from:person{id:'44'}),(to:person{id:'45'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'47'}),(to:person{id:'113'})
MERGE (from)-[r:WIFE]->(to);
MATCH (from:person{id:'49'}),(to:person{id:'50'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'49'}),(to:person{id:'50'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'50'}),(to:person{id:'50'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'50'}),(to:person{id:'49'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'52'}),(to:person{id:'75'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'53'}),(to:person{id:'17'})
MERGE (from)-[r:USBAND]->(to);
MATCH (from:person{id:'53'}),(to:person{id:'24'})
MERGE (from)-[r:ATHER_IN_LAW]->(to);
MATCH (from:person{id:'54'}),(to:person{id:'97'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'58'}),(to:person{id:'24'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'58'}),(to:person{id:'6'})
MERGE (from)-[r:PATERNAL_COUSIN]->(to);
MATCH (from:person{id:'58'}),(to:person{id:'4'})
MERGE (from)-[r:PATERNAL_COUSIN]->(to);
MATCH (from:person{id:'58'}),(to:person{id:'17'})
MERGE (from)-[r:PATERNAL_UNCLE]->(to);
MATCH (from:person{id:'58'}),(to:person{id:'20'})
MERGE (from)-[r:PATERNAL_UNCLE]->(to);
MATCH (from:person{id:'60'}),(to:person{id:'63'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'62'}),(to:person{id:'153'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'63'}),(to:person{id:'60'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'69'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_OR_MATERNAL_GREAT_GREAT_GRANDFATHER]->(to);
MATCH (from:person{id:'69'}),(to:person{id:'220'})
MERGE (from)-[r:FATHER_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'69'}),(to:person{id:'218'})
MERGE (from)-[r:MOTHER_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'69'}),(to:person{id:'228'})
MERGE (from)-[r:MATERNAL_UNCLE_OR_PATERNAL_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'71'}),(to:person{id:'113'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'75'}),(to:person{id:'52'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'76'}),(to:person{id:'86'})
MERGE (from)-[r:POSSIBLE_DESCENDANT]->(to);
MATCH (from:person{id:'80'}),(to:person{id:'119'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'81'}),(to:person{id:'81'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'82'}),(to:person{id:'190'})
MERGE (from)-[r:MATERNAL_UNCLE_BY_MARRIAGE]->(to);
MATCH (from:person{id:'84'}),(to:person{id:'29'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'85'}),(to:person{id:'85'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'86'}),(to:person{id:'76'})
MERGE (from)-[r:POSSIBLE_DISTANT_RELATIVE]->(to);
MATCH (from:person{id:'87'}),(to:person{id:'192'})
MERGE (from)-[r:FIANCE]->(to);
MATCH (from:person{id:'88'}),(to:person{id:'87'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'90'}),(to:person{id:'89'})
MERGE (from)-[r:GRANDDAUGHTER]->(to);
MATCH (from:person{id:'91'}),(to:person{id:'32'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'93'}),(to:person{id:'92'})
MERGE (from)-[r:POSSIBLE]->(to);
MATCH (from:person{id:'94'}),(to:person{id:'110'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'94'}),(to:person{id:'112'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'95'}),(to:person{id:'46'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'96'}),(to:person{id:'190'})
MERGE (from)-[r:MATERNAL_GREAT_UNCLE]->(to);
MATCH (from:person{id:'97'}),(to:person{id:'54'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'98'}),(to:person{id:'99'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'99'}),(to:person{id:'98'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'110'}),(to:person{id:'94'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'110'}),(to:person{id:'112'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'112'}),(to:person{id:'94'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'112'}),(to:person{id:'110'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'113'}),(to:person{id:'47'})
MERGE (from)-[r:HUSBAND]->(to);
MATCH (from:person{id:'113'}),(to:person{id:'71'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'119'}),(to:person{id:'80'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'121'}),(to:person{id:'156'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'123'}),(to:person{id:'124'})
MERGE (from)-[r:DAUGHTER]->(to);
MATCH (from:person{id:'124'}),(to:person{id:'123'})
MERGE (from)-[r:MOTHER]->(to);
MATCH (from:person{id:'125'}),(to:person{id:'33'})
MERGE (from)-[r:TWIN_SISTER]->(to);
MATCH (from:person{id:'131'}),(to:person{id:'130'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'131'}),(to:person{id:'134'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'139'}),(to:person{id:'141'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'141'}),(to:person{id:'139'})
MERGE (from)-[r:YOUNGER_BROTHER]->(to);
MATCH (from:person{id:'151'}),(to:person{id:'151'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'152'}),(to:person{id:'152'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'153'}),(to:person{id:'153'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'156'}),(to:person{id:'121'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'157'}),(to:person{id:'159'})
MERGE (from)-[r:DAUGHTER]->(to);
MATCH (from:person{id:'158'}),(to:person{id:'159'})
MERGE (from)-[r:DAUGHTER]->(to);
MATCH (from:person{id:'160'}),(to:person{id:'30'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'161'}),(to:person{id:'199'})
MERGE (from)-[r:DESCENDANT]->(to);
MATCH (from:person{id:'161'}),(to:person{id:'200'})
MERGE (from)-[r:DESCENDANT]->(to);
MATCH (from:person{id:'162'}),(to:person{id:'190'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'162'}),(to:person{id:'185'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'162'}),(to:person{id:'218'})
MERGE (from)-[r:PATERNAL_AUNT]->(to);
MATCH (from:person{id:'162'}),(to:person{id:'220'})
MERGE (from)-[r:PATERNAL_UNCLE_BY_MARRIAGE]->(to);
MATCH (from:person{id:'162'}),(to:person{id:'228'})
MERGE (from)-[r:PATERNAL_UNCLE]->(to);
MATCH (from:person{id:'167'}),(to:person{id:'23'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'172'}),(to:person{id:'171'})
MERGE (from)-[r:POSSIBLE_RELATIVE]->(to);
MATCH (from:person{id:'173'}),(to:person{id:'173'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'174'}),(to:person{id:'200'})
MERGE (from)-[r:ANCESTOR]->(to);
MATCH (from:person{id:'174'}),(to:person{id:'199'})
MERGE (from)-[r:DISTANT_RELATIVE]->(to);
MATCH (from:person{id:'174'}),(to:person{id:'161'})
MERGE (from)-[r:ANCESTOR]->(to);
MATCH (from:person{id:'175'}),(to:person{id:'8'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'175'}),(to:person{id:'24'})
MERGE (from)-[r:MATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'175'}),(to:person{id:'20'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'175'}),(to:person{id:'18'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'175'}),(to:person{id:'17'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'175'}),(to:person{id:'58'})
MERGE (from)-[r:MATERNAL_FIRST_COUSIN]->(to);
MATCH (from:person{id:'184'}),(to:person{id:'185'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'184'}),(to:person{id:'197'})
MERGE (from)-[r:MATERNAL_AUNT]->(to);
MATCH (from:person{id:'185'}),(to:person{id:'186'})
MERGE (from)-[r:FATHER]->(to);
MATCH (from:person{id:'185'}),(to:person{id:'190'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'186'}),(to:person{id:'185'})
MERGE (from)-[r:SON]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GREAT_GREAT_GRANDFATHER]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'190'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'218'})
MERGE (from)-[r:PATERNAL_AUNT]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'220'})
MERGE (from)-[r:PATERNAL_UNCLE_BY_MARRIAGE_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'172'})
MERGE (from)-[r:POSSIBLE_COUSIN]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'171'})
MERGE (from)-[r:POSSIBLE_COUSIN]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'185'})
MERGE (from)-[r:HUSBAND]->(to);
MATCH (from:person{id:'187'}),(to:person{id:'186'})
MERGE (from)-[r:FATHER_IN_LAW]->(to);
MATCH (from:person{id:'189'}),(to:person{id:'186'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'189'}),(to:person{id:'190'})
MERGE (from)-[r:MATERNAL_UNCLE_BY_MARRIAGE]->(to);
MATCH (from:person{id:'189'}),(to:person{id:'197'})
MERGE (from)-[r:SISTER_IN_LAW]->(to);
MATCH (from:person{id:'190'}),(to:person{id:'192'})
MERGE (from)-[r:RELATIVE]->(to);
MATCH (from:person{id:'190'}),(to:person{id:'185'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'191'}),(to:person{id:'190'})
MERGE (from)-[r:POSSIBLE_SON]->(to);
MATCH (from:person{id:'192'}),(to:person{id:'87'})
MERGE (from)-[r:FIANC]->(to);
MATCH (from:person{id:'194'}),(to:person{id:'190'})
MERGE (from)-[r:HUSBAND]->(to);
MATCH (from:person{id:'194'}),(to:person{id:'220'})
MERGE (from)-[r:PATERNAL_UNCLE]->(to);
MATCH (from:person{id:'194'}),(to:person{id:'218'})
MERGE (from)-[r:PATERNAL_AUNT]->(to);
MATCH (from:person{id:'194'}),(to:person{id:'228'})
MERGE (from)-[r:PATERNAL_UNCLE]->(to);
MATCH (from:person{id:'194'}),(to:person{id:'185'})
MERGE (from)-[r:BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'195'}),(to:person{id:'49'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'195'}),(to:person{id:'50'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'199'}),(to:person{id:'161'})
MERGE (from)-[r:ANCESTOR]->(to);
MATCH (from:person{id:'200'}),(to:person{id:'161'})
MERGE (from)-[r:ANCESTOR]->(to);
MATCH (from:person{id:'200'}),(to:person{id:'199'})
MERGE (from)-[r:RELATIVE]->(to);
MATCH (from:person{id:'201'}),(to:person{id:'202'})
MERGE (from)-[r:TWIN_BROTHER]->(to);
MATCH (from:person{id:'202'}),(to:person{id:'201'})
MERGE (from)-[r:TWIN_BROTHER]->(to);
MATCH (from:person{id:'207'}),(to:person{id:'208'})
MERGE (from)-[r:TWIN_SISTER]->(to);
MATCH (from:person{id:'207'}),(to:person{id:'209'})
MERGE (from)-[r:LIKELY]->(to);
MATCH (from:person{id:'207'}),(to:person{id:'210'})
MERGE (from)-[r:LIKELY]->(to);
MATCH (from:person{id:'208'}),(to:person{id:'207'})
MERGE (from)-[r:TWIN_SISTER]->(to);
MATCH (from:person{id:'208'}),(to:person{id:'209'})
MERGE (from)-[r:LIKELY]->(to);
MATCH (from:person{id:'208'}),(to:person{id:'210'})
MERGE (from)-[r:LIKELY]->(to);
MATCH (from:person{id:'209'}),(to:person{id:'210'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'209'}),(to:person{id:'208'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'209'}),(to:person{id:'207'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'210'}),(to:person{id:'209'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'210'}),(to:person{id:'208'})
MERGE (from)-[r:LIKELY]->(to);
MATCH (from:person{id:'210'}),(to:person{id:'207'})
MERGE (from)-[r:LIKELY]->(to);
MATCH (from:person{id:'216'}),(to:person{id:'217'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'217'}),(to:person{id:'216'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'218'}),(to:person{id:'228'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'218'}),(to:person{id:'227'})
MERGE (from)-[r:PATERNAL_AUNT]->(to);
MATCH (from:person{id:'218'}),(to:person{id:'220'})
MERGE (from)-[r:HUSBAND_OR_SECOND_COUSIN]->(to);
MATCH (from:person{id:'218'}),(to:person{id:'69'})
MERGE (from)-[r:SON_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'219'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_OR_MATERNAL_GREAT_GREAT_GRANDFATHER]->(to);
MATCH (from:person{id:'219'}),(to:person{id:'220'})
MERGE (from)-[r:FATHER_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'219'}),(to:person{id:'218'})
MERGE (from)-[r:MOTHER_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'219'}),(to:person{id:'228'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'219'}),(to:person{id:'225'})
MERGE (from)-[r:MATERNAL_UNCLE]->(to);
MATCH (from:person{id:'220'}),(to:person{id:'218'})
MERGE (from)-[r:WIFE_OR_SECOND_COUSIN]->(to);
MATCH (from:person{id:'220'}),(to:person{id:'69'})
MERGE (from)-[r:SON_OR_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'220'}),(to:person{id:'228'})
MERGE (from)-[r:BROTHER_IN_LAW_OR_SECOND_COUSIN]->(to);
MATCH (from:person{id:'221'}),(to:person{id:'227'})
MERGE (from)-[r:GRANDDAUGHTER]->(to);
MATCH (from:person{id:'222'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GREAT_GRANDFATHER]->(to);
MATCH (from:person{id:'222'}),(to:person{id:'220'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'222'}),(to:person{id:'218'})
MERGE (from)-[r:SISTER_IN_LAW_OR_PATERNAL_SECOND_COUSIN]->(to);
MATCH (from:person{id:'222'}),(to:person{id:'69'})
MERGE (from)-[r:NEPHEW_OR_PATERNAL_SECOND_COUSIN_ONCE_REMOVED]->(to);
MATCH (from:person{id:'223'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'223'}),(to:person{id:'227'})
MERGE (from)-[r:PATERNAL_FIRST_COUSIN]->(to);
MATCH (from:person{id:'223'}),(to:person{id:'24'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'224'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'224'}),(to:person{id:'227'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'224'}),(to:person{id:'7'})
MERGE (from)-[r:POSSIBLE_BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'224'}),(to:person{id:'218'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'224'}),(to:person{id:'228'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'224'}),(to:person{id:'8'})
MERGE (from)-[r:POSSIBLE_NEPHEW]->(to);
MATCH (from:person{id:'225'}),(to:person{id:'218'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'225'}),(to:person{id:'228'})
MERGE (from)-[r:BROTHER]->(to);
MATCH (from:person{id:'225'}),(to:person{id:'190'})
MERGE (from)-[r:SON_IN_LAW]->(to);
MATCH (from:person{id:'225'}),(to:person{id:'185'})
MERGE (from)-[r:SON_IN_LAW]->(to);
MATCH (from:person{id:'225'}),(to:person{id:'220'})
MERGE (from)-[r:SECOND_COUSIN_OR_BROTHER_IN_LAW]->(to);
MATCH (from:person{id:'226'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'226'}),(to:person{id:'227'})
MERGE (from)-[r:PATERNAL_FIRST_COUSIN]->(to);
MATCH (from:person{id:'226'}),(to:person{id:'24'})
MERGE (from)-[r:SON]->(to);
MATCH (from:person{id:'226'}),(to:person{id:'20'})
MERGE (from)-[r:GRANDSON]->(to);
MATCH (from:person{id:'226'}),(to:person{id:'18'})
MERGE (from)-[r:GRANDSON]->(to);
MATCH (from:person{id:'226'}),(to:person{id:'17'})
MERGE (from)-[r:GRANDSON]->(to);
MATCH (from:person{id:'227'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'227'}),(to:person{id:'218'})
MERGE (from)-[r:NIECE]->(to);
MATCH (from:person{id:'227'}),(to:person{id:'228'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'228'}),(to:person{id:'218'})
MERGE (from)-[r:SISTER]->(to);
MATCH (from:person{id:'228'}),(to:person{id:'220'})
MERGE (from)-[r:BROTHER_IN_LAW_OR_SECOND_COUSIN]->(to);
MATCH (from:person{id:'228'}),(to:person{id:'227'})
MERGE (from)-[r:PATERNAL_AUNT]->(to);
MATCH (from:person{id:'229'}),(to:person{id:'221'})
MERGE (from)-[r:PATERNAL_GRANDFATHER]->(to);
MATCH (from:person{id:'229'}),(to:person{id:'227'})
MERGE (from)-[r:PATERNAL_FIRST_COUSIN]->(to);
MATCH (from:person{id:'229'}),(to:person{id:'47'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'229'}),(to:person{id:'24'})
MERGE (from)-[r:NEPHEW]->(to);
MATCH (from:person{id:'230'}),(to:person{id:'230'})
MERGE (from)-[r:POSSIBLY]->(to);
MATCH (from:person{id:'231'}),(to:person{id:'230'})
MERGE (from)-[r:POSSIBLY]->(to);
