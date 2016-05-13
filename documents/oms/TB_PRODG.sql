/*
================================================================================
��ṹ����:TB_PRODG
��ṹ����:ʩ���ල���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODG;
drop index AK_TB_PRODG;
drop table TB_PRODG;
create table TB_PRODG  (
   PRODG_ID             INTEGER                         not null,  /*ʩ���ල���ӱ�ID    */
   PRODG001             INTEGER                         not null,  /*ʩ���ල��ID        */
   PRODG002             INTEGER                         not null,  /*Υ����ĿID          */
   PRODG003             DATE,				           /*��Ӧ����ID          */
   PRODG004             NUMBER(12,2),				   /*�������            */
   PRODG005             VARCHAR2(100),				   /*������ʽ            */
   PRODG006             INTEGER,     		                   /*���õ�ID            */
   PRODG007             INTEGER,     		                   /*���õ���ϸID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODG primary key (PRODG_ID)
);
create unique index AK_TB_PRODG on TB_PRODG (PRODG001,PRODG002);
create sequence SEQ_TB_PRODG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODG to public;
grant index  on TB_PRODG to public;
grant update on TB_PRODG to public; 
grant delete on TB_PRODG to public;  
grant insert on TB_PRODG to public; 
grant select on SEQ_TB_PRODG to public;   