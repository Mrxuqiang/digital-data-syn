/*
================================================================================
��ṹ����:TB_CONFF
��ṹ����:��Ӧ�̺�ͬ������ױ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFF;
drop index AK_TB_CONFF;
drop table TB_CONFF;
create table TB_CONFF  (
   CONFF_ID             INTEGER                         not null,  /*��ͬ�������ID      */
   CONFF001             INTEGER                         not null,  /*��ͬ���ID          */
   CONFF002             INTEGER                         not null,  /*����ID              */
   CONFF003             VARCHAR2(1)                     not null,  /*��������            */
   CONFF004             NUMBER(12,2),                              /*���׿���(%)         */
   CONFF005             VARCHAR2(1),                               /*�Ƿ�Ӫ����֯����  */
   CONFF006             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONFF007             NUMBER(4),                                 /*���                */
   CONFF008             NUMBER(2),                                 /*����                */
   CONFF009             DATE,                                      /*��ʼ����            */
   CONFF010             DATE,                                      /*��������            */
   CONFF011             NUMBER(12,2),                              /*���׽��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFF primary key (CONFF_ID)
);
create unique index AK_TB_CONFF on TB_CONFF (CONFF001,CONFF002,CONFF003,CONFF006,CONFF007,CONFF008);
create sequence SEQ_TB_CONFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFF to public;
grant index  on TB_CONFF to public;
grant update on TB_CONFF to public; 
grant delete on TB_CONFF to public;  
grant insert on TB_CONFF to public; 
grant select on SEQ_TB_CONFF to public;   