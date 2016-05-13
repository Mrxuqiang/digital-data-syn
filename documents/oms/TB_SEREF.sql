/*
================================================================================
��ṹ����:TB_SEREF
��ṹ����:��Ʒ���õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREF;
drop index AK_TB_SEREF;
drop table TB_SEREF;
create table TB_SEREF  (
   SEREF_ID             INTEGER                         not null,  /*��Ʒ���õ���ϸID    */
   SEREF001             INTEGER                         not null,  /*��Ʒ���õ�ID        */
   SEREF002             INTEGER                         not null,  /*��ƷID              */
   SEREF003             INTEGER                         not null,  /*��λID              */
   SEREF004             NUMBER(18,3)                    not null,  /*����                */
   SEREF005             NUMBER(12,2)                    not null,  /*����                */
   SEREF006             NUMBER(12,2)                    not null,  /*���                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SEREF primary key (SEREF_ID)
);
create unique index AK_TB_SEREF on TB_SEREF (SEREF_ID,SEREF001,SEREF002);
create sequence SEQ_TB_SEREF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREF to public;
grant index  on TB_SEREF to public;
grant update on TB_SEREF to public; 
grant delete on TB_SEREF to public;  
grant insert on TB_SEREF to public; 
grant select on SEQ_TB_SEREF to public;   