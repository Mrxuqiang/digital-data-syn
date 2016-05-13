/*
================================================================================
��ṹ����:TB_SERED
��ṹ����:��Ʒ��ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERED;
drop index AK_TB_SERED;
drop table TB_SERED;
create table TB_SERED  (
   SERED_ID             INTEGER                         not null,  /*��Ʒ��ⵥ��ϸID    */
   SERED001             INTEGER                         not null,  /*��Ʒ��ⵥID        */
   SERED002             INTEGER                         not null,  /*��ƷID              */
   SERED003             INTEGER                         not null,  /*��λID              */
   SERED004             NUMBER(18,3)                    not null,  /*����                */
   SERED005             NUMBER(12,2)                    not null,  /*����                */
   SERED006             NUMBER(12,2)                    not null,  /*���                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SERED primary key (SERED_ID)
);
create unique index AK_TB_SERED on TB_SERED (SERED_ID,SERED001,SERED002);
create sequence SEQ_TB_SERED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERED to public;
grant index  on TB_SERED to public;
grant update on TB_SERED to public; 
grant delete on TB_SERED to public;  
grant insert on TB_SERED to public; 
grant select on SEQ_TB_SERED to public;   