/*
================================================================================
��ṹ����:TB_CCMDG
��ṹ����:ȯ��ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDG;
drop index AK_TB_CCMDG;
drop table TB_CCMDG;
create table TB_CCMDG  (
   CCMDG_ID             INTEGER                         not null,  /*ȯ��ⵥ��ϸID      */
   CCMDG001             INTEGER                         not null,  /*ȯ��ⵥID          */
   CCMDG002             INTEGER                         not null,  /*ȯ��ID              */
   CCMDG003             INTEGER                         not null,  /*ȯ���ID            */
   CCMDG004             NUMBER(12,2)                    not null,  /*ȯ�����          */
   CCMDG005             NUMBER(30)                      not null,  /*��ʼ����            */
   CCMDG006             NUMBER(30)                      not null,  /*��������            */
   CCMDG007             NUMBER(12)                      not null,  /*����                */
   CCMDG008             NUMBER(12,2)                    not null,  /*ȯ���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDG primary key (CCMDG_ID)
);
create unique index AK_TB_CCMDG on TB_CCMDG (CCMDG001,CCMDG002,CCMDG003,CCMDG005);
create sequence SEQ_TB_CCMDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDG to public;
grant index  on TB_CCMDG to public;
grant update on TB_CCMDG to public; 
grant delete on TB_CCMDG to public;  
grant insert on TB_CCMDG to public; 
grant select on SEQ_TB_CCMDG to public;   