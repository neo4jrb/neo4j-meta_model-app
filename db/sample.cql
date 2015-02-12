create constraint on (n:`Neo4j::MetaModel::Company`) assert n.`uuid` is unique;
create constraint on (n:`Neo4j::MetaModel::MetaModelBase`) assert n.`uuid` is unique;
create constraint on (n:`Neo4j::MetaModel::Model`) assert n.`uuid` is unique;
create constraint on (n:`Neo4j::MetaModel::Person`) assert n.`uuid` is unique;
create constraint on (n:`Neo4j::MetaModel::Product`) assert n.`uuid` is unique;
create constraint on (n:`Neo4j::MetaModel::Property`) assert n.`uuid` is unique;
create (_0:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Model` {`class_name`:"Person", `uuid`:"5e9e9ce4-fc33-4f4b-b374-b38c1dc5ebfe"})
create (_1:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Property` {`name`:"name", `type`:"String", `uuid`:"299a8db4-716d-4bf3-8b5e-110e98d20dbb"})
create (_2:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Property` {`name`:"title", `type`:"String", `uuid`:"f729bed0-738c-410c-a7d0-4f0c448b789a"})
create (_3:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Model` {`class_name`:"Product", `uuid`:"2a31e244-00b4-46b8-9a22-e9b6991e5ee9"})
create (_4:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Property` {`name`:"name", `type`:"String", `uuid`:"c11a98a3-d18c-465e-bf9d-c3ded7db1404"})
create (_5:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Model` {`class_name`:"Company", `uuid`:"32a3a4a0-34f1-43ef-8610-734293dd3c6a"})
create (_6:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Property` {`name`:"name", `type`:"String", `uuid`:"7804ab23-8b55-4e0d-bba7-a71f06125e55"})
create (_7:`Neo4j::MetaModel::MetaModelBase`:`Neo4j::MetaModel::Property` {`name`:"Founded", `type`:"DateTime", `uuid`:"b2c75996-76d3-470c-af05-04919edca1de"})
create (_8:`Company` {`Founded`:1401580800, `name`:"Widgets Inc", `uuid`:"50488ec7-ea36-40f6-8020-9b1d68ed0f28"})
create (_9:`Person` {`name`:"James Smith", `title`:"Engineer", `uuid`:"d10f1fa8-54f4-413a-b66f-ae294bb92522"})
create (_10:`Person` {`name`:"Sam Pearson", `title`:"CEO", `uuid`:"0bd6bad8-b9f8-44cc-b51a-bee4cc790e1b"})
create (_11:`Product` {`name`:"MegaWidget", `uuid`:"49ea5a9c-e280-46bc-9709-6a8e63def57f"})
create (_12:`Company` {`Founded`:1123977600, `name`:"Old Skool Widgets", `uuid`:"5e9200bb-ccb7-40ab-a999-60ba204c1b00"})
create (_13:`Person` {`name`:"Jim Aderson", `title`:"Dictator", `uuid`:"d9924d53-2704-4d14-beb5-98f663bc17c3"})
create (_14:`Person` {`name`:"Sally Ketchinson", `title`:"Engineer", `uuid`:"8727cbbe-0b85-4c41-b1ba-43e2db509326"})
create (_15:`Product` {`name`:"Widget 1.0", `uuid`:"63bf3e0f-6a10-4c6d-86a1-32419101911a"})
create _0-[:`has_property`]->_2
create _0-[:`has_property`]->_1
create _0-[:`has_association_to` {`join_type`:"one_to_many", `name`:"company", `opposite_name`:"employees", `relationship_type`:"WORKS_FOR"}]->_5
create _3-[:`has_property`]->_4
create _3-[:`has_association_to` {`join_type`:"one_to_many", `name`:"creator", `opposite_name`:"products", `relationship_type`:"CREATED_BY"}]->_0
create _5-[:`has_property`]->_7
create _5-[:`has_property`]->_6
create _9-[:`WORKS_FOR`]->_8
create _10-[:`WORKS_FOR`]->_8
create _11-[:`CREATED_BY`]->_9
create _13-[:`WORKS_FOR`]->_12
create _14-[:`WORKS_FOR`]->_12
create _15-[:`CREATED_BY`]->_14
