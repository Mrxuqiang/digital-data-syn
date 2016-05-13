/*
================================================================================
��ṹ����:TB_CONAI
��ṹ����:չ�ʵ���ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAI;
drop index AK_TB_CONAI;
drop table TB_CONAI;
create table TB_CONAI  (
   CONAI_ID             INTEGER                         not null,  /*չ�ʵ���ϸID        */
   CONAI001             INTEGER                         not null,  /*չ�ʵ�ID            */
   CONAI002             DATE                            not null,  /*��ʼ����            */
   CONAI003             DATE                            not null,  /*��������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONAI primary key (CONAI_ID)
);
create unique index AK_TB_CONAI on TB_CONAI (CONAI001,CONAI002);
create sequence SEQ_TB_CONAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAI to public;
grant index  on TB_CONAI to public;
grant update on TB_CONAI to public; 
grant delete on TB_CONAI to public;  
grant insert on TB_CONAI to public; 
grant select on SEQ_TB_CONAI to public;   