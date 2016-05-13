/*
================================================================================
��ṹ����:TB_AGEAE
��ṹ����:���տ��渶��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AGEAE;
drop index AK_TB_AGEAE;
drop table TB_AGEAE;
create table TB_AGEAE  (
   AGEAE_ID             INTEGER                         not null,  /*���տ��渶ID          */
   AGEAE001             INTEGER                         not null,  /*���տ�ID              */
   AGEAE002             INTEGER                         not null,  /*�渶��ID                    */
   AGEAE003             INTEGER                         not null,  /*�渶����ID                  */
   AGEAE004             NUMBER(12,2),                              /*�渶���                    */
   AGEAE005             NUMBER(12,2),                              /*������                    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   constraint PK_TB_AGEAE primary key (AGEAE_ID)
);
create unique index AK_TB_AGEAE on TB_AGEAE (AGEAE001,AGEAE002,AGEAE003);
create sequence SEQ_TB_AGEAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAE to public;
grant index  on TB_AGEAE to public;
grant update on TB_AGEAE to public; 
grant delete on TB_AGEAE to public;  
grant insert on TB_AGEAE to public; 
grant select on SEQ_TB_AGEAE to public;   