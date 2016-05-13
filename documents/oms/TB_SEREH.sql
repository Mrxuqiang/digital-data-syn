/*
================================================================================
��ṹ����:TB_SEREH
��ṹ����:��Ʒ���ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREH;
drop index AK_TB_SEREH;
drop table TB_SEREH;
create table TB_SEREH  (
   SEREH_ID             INTEGER                         not null,  /*��Ʒ���ⵥ��ϸID    */
   SEREH001             INTEGER                         not null,  /*��Ʒ���ⵥID        */
   SEREH002             INTEGER                         not null,  /*��ƷID              */
   SEREH003             INTEGER                         not null,  /*��λID              */
   SEREH004             NUMBER(18,3)                    not null,  /*����                */
   SEREH005             NUMBER(12,2)                    not null,  /*����                */
   SEREH006             NUMBER(12,2)                    not null,  /*���                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SEREH primary key (SEREH_ID)
);
create unique index AK_TB_SEREH on TB_SEREH (SEREH_ID,SEREH001,SEREH002);
create sequence SEQ_TB_SEREH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREH to public;
grant index  on TB_SEREH to public;
grant update on TB_SEREH to public; 
grant delete on TB_SEREH to public;  
grant insert on TB_SEREH to public; 
grant select on SEQ_TB_SEREH to public;   