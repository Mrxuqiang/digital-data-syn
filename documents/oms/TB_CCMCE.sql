/*
================================================================================
��ṹ����:TB_CCMCE
��ṹ����:���ѿ���ֵ����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCE;
drop index AK_TB_CCMCE;
drop table TB_CCMCE;
create table TB_CCMCE  (
   CCMCE_ID             INTEGER                         not null,  /*���ѿ���ֵ����ϸID  */
   CCMCE001             INTEGER                         not null,  /*���ѿ���ֵ��ID      */
   CCMCE002             INTEGER                         not null,  /*����ID              */
   CCMCE003             NUMBER(12,2)                    not null,  /*������            */
   CCMCE004             INTEGER,                                   /*��������ID          */
   CCMCE005             NUMBER(12,2),                              /*�����ѽ��          */
   CCMCE006             VARCHAR2(30),                              /*����                */
   CCMCE007             NUMBER(12,2),                              /*֧Ʊ���            */
   CCMCE008             VARCHAR2(16),                              /*֧Ʊ��              */
   CCMCE009             VARCHAR2(60),                              /*֧Ʊ��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCE primary key (CCMCE_ID)
);
create unique index AK_TB_CCMCE on TB_CCMCE (CCMCE001,CCMCE002);
create sequence SEQ_TB_CCMCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCE to public;
grant index  on TB_CCMCE to public;
grant update on TB_CCMCE to public; 
grant delete on TB_CCMCE to public;  
grant insert on TB_CCMCE to public; 
grant select on SEQ_TB_CCMCE to public;   