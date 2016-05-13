/*
================================================================================
��ṹ����:TB_CONEF
��ṹ����:��Ӧ�̺�ͬ���ױ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONEF;
drop index AK_TB_CONEF;
drop table TB_CONEF;
create table TB_CONEF  (
   CONEF_ID             INTEGER                         not null,  /*��ͬ����ID          */
   CONEF001             INTEGER                         not null,  /*��ͬID              */
   CONEF002             INTEGER                         not null,  /*����ID              */
   CONEF003             VARCHAR2(1)                     not null,  /*��������            */
   CONEF004             NUMBER(12,2),                              /*���׿���(%)         */
   CONEF005             VARCHAR2(1),                               /*�Ƿ�Ӫ����֯����  */
   CONEF006             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONEF007             NUMBER(4),                                 /*���                */
   CONEF008             NUMBER(2),                                 /*����                */
   CONEF009             DATE,                                      /*��ʼ����            */
   CONEF010             DATE,                                      /*��������            */
   CONEF011             NUMBER(12,2),                              /*���׽��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONEF primary key (CONEF_ID)
);
create unique index AK_TB_CONEF on TB_CONEF (CONEF001,CONEF002,CONEF003,CONEF006,CONEF007,CONEF008);
create sequence SEQ_TB_CONEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEF to public;
grant index  on TB_CONEF to public;
grant update on TB_CONEF to public; 
grant delete on TB_CONEF to public;  
grant insert on TB_CONEF to public; 
grant select on SEQ_TB_CONEF to public;   