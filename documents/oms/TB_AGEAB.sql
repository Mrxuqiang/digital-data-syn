/*
================================================================================
��ṹ����:TB_AGEAB
��ṹ����:���տ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGEAB;
drop index AK_TB_AGEAB;
drop table TB_AGEAB;
create table TB_AGEAB  (
   AGEAB_ID             INTEGER                         not null,  /*���տ�����ID          */
   AGEAB001             INTEGER                         not null,  /*���տ�ID              */
   AGEAB002             VARCHAR2(1)                     not null,  /*��������                    */
   AGEAB003             INTEGER                         not null,  /*���۵�ID                    */
   AGEAB004             INTEGER                         not null,  /*���ID                    */
   AGEAB005             INTEGER                         not null,  /*�������ϸID              */
   AGEAB006             DATE,                                      /*��������                    */
   AGEAB007             INTEGER                         not null,  /*�������ID                  */
   AGEAB008             INTEGER,                                   /*ȯ��ID                      */
   AGEAB009             DATE,                                      /*ȯ������                    */
   AGEAB010             NUMBER(12,2),                              /*���׽��                    */
   AGEAB011             NUMBER(12,2),                              /*�ѷ����                    */
   AGEAB012             NUMBER(12,2),                              /*δ�����                    */
   AGEAB013             NUMBER(12,2),                              /*������                    */
   AGEAB014             NUMBER(12,2),                              /*������                      */
   AGEAB015             NUMBER(12,2),                              /*�������ѷ�                  */
   AGEAB016             NUMBER(12,2),                              /*������δ��                  */
   AGEAB017             NUMBER(12,2),                              /*�����ѷ���                  */
   AGEAB018             NUMBER(12,2),                              /*�����                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_AGEAB primary key (AGEAB_ID)
);
create unique index AK_TB_AGEAB on TB_AGEAB (AGEAB001,AGEAB002,AGEAB003,AGEAB004,AGEAB005);
create sequence SEQ_TB_AGEAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAB to public;
grant index  on TB_AGEAB to public;
grant update on TB_AGEAB to public; 
grant delete on TB_AGEAB to public;  
grant insert on TB_AGEAB to public; 
grant select on SEQ_TB_AGEAB to public;   