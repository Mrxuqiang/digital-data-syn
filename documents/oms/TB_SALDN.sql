/*
================================================================================
��ṹ����:TB_SALDN
��ṹ����:�˻��渶���ص��տ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALDN;
drop index AK_TB_SALDN;
drop table TB_SALDN;
create table TB_SALDN  (
   SALDN_ID             INTEGER                         not null,  /*�˻��渶���ص�����ID */
   SALDN001             INTEGER                         not null,  /*�˻��渶���ص�ID     */
   SALDN002             INTEGER                         not null,  /*���㷽ʽID           */
   SALDN003             NUMBER(12,2)                    not null,  /*������             */
   SALDN004             NUMBER(12,2),                              /*������               */
   SALDN005             VARCHAR2(30),                              /*���п���             */
   SALDN006             INTEGER,                                   /*��������ID           */
   SALDN007             NUMBER(12,2),                              /*��������(%)          */
   SALDN008             VARCHAR2(30),                              /*֧Ʊ��               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_SALDN primary key (SALDN_ID)
);
create index AK_TB_SALDN on TB_SALDN (SALDN_ID,SALDN001,SALDN002);
create sequence SEQ_TB_SALDN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDN to public;
grant index  on TB_SALDN to public;
grant update on TB_SALDN to public; 
grant delete on TB_SALDN to public;  
grant insert on TB_SALDN to public; 
grant select on SEQ_TB_SALDN to public;   