/*
================================================================================
��ṹ����:TB_CONBM
��ṹ����:��ͬ�����Թ̶������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBM;
drop index AK_TB_CONBM;
drop table TB_CONBM;
create table TB_CONBM  (
   CONBM_ID             INTEGER                         not null,  /*��ͬ�����Թ̶�������ϸID */
   CONBM001             INTEGER                         not null,  /*��ͬID              */
   CONBM002             INTEGER                         not null,  /*��ͬ�����Թ̶�����ID*/
   CONBM003             DATE                            not null,  /*��ʼ����            */
   CONBM004             DATE                            not null,  /*��������            */
   CONBM005             NUMBER(12,2)                    not null,  /*��׼��              */
   CONBM006             NUMBER(12,2)                    not null,  /*��׼��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBM primary key (CONBM_ID)
);
create unique index AK_TB_CONBM on TB_CONBM (CONBM001,CONBM002,CONBM003);
create sequence SEQ_TB_CONBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBM to public;
grant index  on TB_CONBM to public;
grant update on TB_CONBM to public; 
grant delete on TB_CONBM to public;  
grant insert on TB_CONBM to public; 
grant select on SEQ_TB_CONBM to public;   