/*
================================================================================
��ṹ����:TB_SALFA
��ṹ����:���ۼ�˱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALFA;
drop index AK_TB_SALFA;
drop table TB_SALFA;
create table TB_SALFA  (
   SALFA_ID             INTEGER                         not null,  /*���ۼ��ID        */
   SALFA001             INTEGER                         not null,  /*Ӫ����֯ID        */
   SALFA002             DATE                            not null,  /*��������          */
   SALFA003             INTEGER                         not null,  /*¥��ID            */
   SALFA004             INTEGER                         not null,  /*¥��ID            */
   SALFA005             INTEGER                         not null,  /*����ID            */
   SALFA006             VARCHAR2(1),                               /*���ݺ˶�          */
   SALFA007             INTEGER,                                   /*�����ԱID        */
   SALFA008             DATE,                                      /*�������          */
   SALFA009             VARCHAR2(100),                             /*˵��              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_SALFA primary key (SALFA_ID)
);
create unique index AK_TB_SALFA on TB_SALFA (SALFA001,SALFA002,SALFA003,SALFA004);
create sequence SEQ_TB_SALFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALFA to public;
grant index  on TB_SALFA to public;
grant update on TB_SALFA to public; 
grant delete on TB_SALFA to public;  
grant insert on TB_SALFA to public; 
grant select on SEQ_TB_SALFA to public;   