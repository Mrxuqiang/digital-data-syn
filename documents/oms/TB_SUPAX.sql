/*
================================================================================
��ṹ����:TB_SUPAX
��ṹ����:���̼ƻ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAX;
drop index AK_TB_SUPAX;
drop table TB_SUPAX;
create table TB_SUPAX  (
   SUPAX_ID             INTEGER                         not null,  /*���̼ƻ�ID          */
   SUPAX001             VARCHAR2(16)                    not null,  /*���̼ƻ����        */
   SUPAX002             VARCHAR2(40)                    not null,  /*���̼ƻ�����        */
   SUPAX003             INTEGER                         not null,  /*���̸�����ID        */
   SUPAX004             INTEGER                         not null,  /*����Ӫ����֯ID      */
   SUPAX005             VARCHAR2(100),                             /*���̼ƻ�˵��        */
   SUPAX006             DATE                            not null,  /*Ԥ�ƿ�ʼ����        */
   SUPAX007             DATE                            not null,  /*Ԥ�ƽ�������        */
   SUPAX008             NUMBER(12,2)                    not null,  /*Ԥ�Ʒ���            */
   SUPAX009             DATE,                                      /*ʵ�ʿ�ʼ����        */
   SUPAX010             DATE,                                      /*ʵ�ʽ�������        */
   SUPAX011             NUMBER(12,2),                              /*ʵ�ʷ���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAX primary key (SUPAX_ID)
);
create unique index AK_TB_SUPAX on TB_SUPAX (SUPAX001);
create sequence SEQ_TB_SUPAX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAX to public;
grant index  on TB_SUPAX to public;
grant update on TB_SUPAX to public; 
grant delete on TB_SUPAX to public;  
grant insert on TB_SUPAX to public; 
grant select on SEQ_TB_SUPAX to public;   