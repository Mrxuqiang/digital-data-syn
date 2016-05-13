/*
================================================================================
��ṹ����:TB_CONEE
��ṹ����:��Ӧ�̺�ͬ�ڼ���ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONEE;
drop index AK_TB_CONEE;
drop table TB_CONEE;
create table TB_CONEE  (
   CONEE_ID             INTEGER                         not null,  /*��ͬ�ڼ����ID      */
   CONEE001             INTEGER                         not null,  /*��ͬID              */
   CONEE002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONEE003             INTEGER                         not null,  /*����ID              */
   CONEE004             VARCHAR2(1)                     not null,  /*��������            */
   CONEE005             VARCHAR2(1)                     not null,  /*���ò���ʱ��        */
   CONEE006             DATE,                                      /*��������            */
   CONEE007             VARCHAR2(1)                     not null,  /*��׼Ӫ����֯        */
   CONEE008             VARCHAR2(1)                     not null,  /*��׼����            */
   CONEE009             NUMBER(12,2),                              /*���ý��            */
   CONEE010             NUMBER(12,2),                              /*��׼���ñ���(%)     */
   CONEE011             NUMBER(12,2),                              /*���ü������(%)     */
   CONEE012             DATE,                                      /*��ʼ����            */
   CONEE013             DATE,                                      /*��ֹ����            */
   CONEE014             NUMBER(12,2),                              /*��������            */
   CONEE015             NUMBER(12,2),                              /*��������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONEE primary key (CONEE_ID)
);
create unique index AK_TB_CONEE on TB_CONEE (CONEE001,CONEE002,CONEE003,CONEE004,CONEE005);
create sequence SEQ_TB_CONEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEE to public;
grant index  on TB_CONEE to public;
grant update on TB_CONEE to public; 
grant delete on TB_CONEE to public;  
grant insert on TB_CONEE to public; 
grant select on SEQ_TB_CONEE to public;   