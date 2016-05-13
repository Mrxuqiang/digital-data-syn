/*
================================================================================
��ṹ����:TB_SUPAL
��ṹ����:�̻������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAL;
drop index AK_TB_SUPAL;
drop table TB_SUPAL;
create table TB_SUPAL  (
   SUPAL_ID             INTEGER                         not null,  /*�Ǽǹ���ID          */
   SUPAL001             INTEGER                         not null,  /*�Ǽ�ID              */
   SUPAL002             INTEGER                         not null,  /*�׶�ID              */
   SUPAL003             INTEGER                         not null,  /*����ID              */
   SUPAL004             DATE                            not null,  /*�������            */
   SUPAL005             VARCHAR2(1),                               /*���״��            */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAL primary key (SUPAL_ID)
);
create unique index AK_TB_SUPAL on TB_SUPAL (SUPAL001,SUPAL002,SUPAL003);
create sequence SEQ_TB_SUPAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAL to public;
grant index  on TB_SUPAL to public;
grant update on TB_SUPAL to public; 
grant delete on TB_SUPAL to public;  
grant insert on TB_SUPAL to public; 
grant select on SEQ_TB_SUPAL to public;   