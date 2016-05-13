/*
================================================================================
��ṹ����:TB_PURAA
��ṹ����:���䷽ʽ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURAA;
drop index AK_TB_PURAA;
drop table TB_PURAA;
create table TB_PURAA  (
   PURAA_ID             INTEGER                         not null,  /*���䷽ʽID          */
   PURAA001             INTEGER                         not null,  /*Ӫ����֯ID          */
   PURAA002             INTEGER                         not null,  /*Ӫ����֯��˾ID      */
   PURAA003             INTEGER                         not null,  /*��ƷID              */
   PURAA004             INTEGER                         not null,  /*Ĭ�Ϲ�Ӧ��ID        */
   PURAA005             VARCHAR2(1),                               /*���䷽ʽ            */
   PURAA006             NUMBER(18,3),                              /*�������            */
   PURAA007             NUMBER(18,3),                              /*�ٲ�����            */
   PURAA008             VARCHAR2(1),                               /*��Ӫ��ʽ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PURAA primary key (PURAA_ID)
);
create unique index AK_TB_PURAA on TB_PURAA (PURAA001,PURAA003);
create sequence SEQ_TB_PURAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURAA to public;
grant index  on TB_PURAA to public;
grant update on TB_PURAA to public; 
grant delete on TB_PURAA to public;  
grant insert on TB_PURAA to public; 
grant select on SEQ_TB_PURAA to public;   