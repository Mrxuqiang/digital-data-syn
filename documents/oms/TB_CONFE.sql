/*
================================================================================
��ṹ����:TB_CONFE
��ṹ����:��Ӧ�̺�ͬ����ڼ���ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFE;
drop index AK_TB_CONFE;
drop table TB_CONFE;
create table TB_CONFE  (
   CONFE_ID             INTEGER                         not null,  /*��ͬ����ڼ����ID  */
   CONFE001             INTEGER                         not null,  /*��ͬ���ID          */
   CONFE002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONFE003             INTEGER                         not null,  /*����ID              */
   CONFE004             VARCHAR2(1)                     not null,  /*��������            */
   CONFE005             VARCHAR2(1)                     not null,  /*���ò���ʱ��        */
   CONFE006             DATE,                                      /*��������            */
   CONFE007             VARCHAR2(1)                     not null,  /*��׼Ӫ����֯        */
   CONFE008             VARCHAR2(1)                     not null,  /*��׼����            */
   CONFE009             NUMBER(12,2),                              /*���ý��            */
   CONFE010             NUMBER(12,2),                              /*��׼���ñ���(%)     */
   CONFE011             NUMBER(12,2),                              /*���ü������(%)     */
   CONFE012             DATE,                                      /*��ʼ����            */
   CONFE013             DATE,                                      /*��ֹ����            */
   CONFE014             NUMBER(12,2),                              /*��������            */
   CONFE015             NUMBER(12,2),                              /*��������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFE primary key (CONFE_ID)
);
create unique index AK_TB_CONFE on TB_CONFE (CONFE001,CONFE002,CONFE003,CONFE004,CONFE005);
create sequence SEQ_TB_CONFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFE to public;
grant index  on TB_CONFE to public;
grant update on TB_CONFE to public; 
grant delete on TB_CONFE to public;  
grant insert on TB_CONFE to public; 
grant select on SEQ_TB_CONFE to public;   