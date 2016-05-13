/*
================================================================================
��ṹ����:TB_PRODE
��ṹ����:װ�޽��ѵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODE;
drop index AK_TB_PRODE;
drop table TB_PRODE;
create table TB_PRODE  (
   PRODE_ID             INTEGER                         not null,  /*װ�޽��ѵ��ӱ�ID    */
   PRODE001             INTEGER                         not null,  /*װ�޽��ѵ�ID        */
   PRODE002             INTEGER                         not null,  /*������ĿID          */
   PRODE003             DATE,				           /*��Ӧ����ID          */
   PRODE004             NUMBER(12,2),				   /*���ѽ��            */
   PRODE005             VARCHAR2(100),				   /*��ע                */
   PRODE006             INTEGER,     		                   /*���õ�ID            */
   PRODE007             INTEGER,     		                   /*���õ���ϸID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODE primary key (PRODE_ID)
);
create unique index AK_TB_PRODE on TB_PRODE (PRODE001,PRODE002);
create sequence SEQ_TB_PRODE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODE to public;
grant index  on TB_PRODE to public;
grant update on TB_PRODE to public; 
grant delete on TB_PRODE to public;  
grant insert on TB_PRODE to public; 
grant select on SEQ_TB_PRODE to public;   