/*
================================================================================
��ṹ����:TB_PMTQB
��ṹ����:��齱�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTQB;
drop index AK_TB_PMTQB;
drop table TB_PMTQB;
create table TB_PMTQB  (
   PMTQB_ID             INTEGER                         not null,  /*��齱����ID                */
   PMTQB001             INTEGER                         not null,  /*��齱��ID                  */
   PMTQB002             INTEGER                         not null,  /*Ӫ����֯ID                    */
   PMTQB003             VARCHAR2(1)                     not null,  /*��������                      */
   PMTQB004             INTEGER                         not null,  /*���۵�ID                      */
   PMTQB005             INTEGER                         not null,  /*���ID                      */
   PMTQB006             VARCHAR2(30),                              /*���۵���                      */
   PMTQB007             VARCHAR2(30),                              /*�����                      */
   PMTQB008             NUMBER(12,2),                              /*ʵ������                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTQB primary key (PMTQB_ID)
);
create unique index AK_TB_PMTQB on TB_PMTQB (PMTQB001,PMTQB002,PMTQB003,PMTQB004,PMTQB005);
create sequence SEQ_TB_PMTQB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTQB to public;
grant index  on TB_PMTQB to public;
grant update on TB_PMTQB to public; 
grant delete on TB_PMTQB to public;  
grant insert on TB_PMTQB to public; 
grant select on SEQ_TB_PMTQB to public;   