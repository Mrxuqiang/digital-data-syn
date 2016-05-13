/*
================================================================================
��ṹ����:TB_CONEG
��ṹ����:��Ӧ�̺�ͬ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONEG;
drop index AK_TB_CONEG;
drop table TB_CONEG;
create table TB_CONEG  (
   CONEG_ID             INTEGER                         not null,  /*��ͬ����ID          */
   CONEG001             INTEGER                         not null,  /*��ͬID              */
   CONEG002             INTEGER                         not null,  /*����ID              */
   CONEG003             VARCHAR2(1)                     not null,  /*��������            */
   CONEG004             VARCHAR2(1)                     not null,  /*�ֶμ��㷽��        */
   CONEG005             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONEG006             VARCHAR2(1)                     not null,  /*��׼Ӫ����֯        */
   CONEG007             VARCHAR2(1)                     not null,  /*��׼����            */
   CONEG008             NUMBER(12,2),                              /*��׼���ñ���(%)     */
   CONEG009             NUMBER(12,2),                              /*��������(%)         */
   CONEG010             NUMBER(12,2),                              /*ë������            */
   CONEG011             NUMBER(12,2),                              /*ë������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONEG primary key (CONEG_ID)
);
create unique index AK_TB_CONEG on TB_CONEG (CONEG001,CONEG002,CONEG003,CONEG005);
create sequence SEQ_TB_CONEG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEG to public;
grant index  on TB_CONEG to public;
grant update on TB_CONEG to public; 
grant delete on TB_CONEG to public;  
grant insert on TB_CONEG to public; 
grant select on SEQ_TB_CONEG to public;   