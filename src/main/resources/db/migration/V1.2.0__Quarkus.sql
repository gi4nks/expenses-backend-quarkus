--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--


CREATE TABLE APP_USER (
    ID INTEGER NOT NULL PRIMARY KEY,
    NAME varchar(100) NOT NULL,
    TSTAMP TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE REPORT ADD FK_APP_USER INTEGER REFERENCES APP_USER(ID);


INSERT INTO APP_USER (ID,NAME) VALUES (1,'niko');

UPDATE REPORT SET FK_APP_USER =1 WHERE ID=1