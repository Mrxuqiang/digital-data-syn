/*
================================================================================
��ṹ����:TB_CONGV
��ṹ����:�������̼�¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONGV;
drop index AK_TB_CONGV;
drop table TB_CONGV;
create table TB_CONGV  (
   CONGV_ID             INTEGER                         not null,  /*����������ϵID  */
   CONGV001             INTEGER                         not null,  /*����ID          */
   CONGV002             INTEGER                         not null,  /*�׶�ID              */
   CONGV003             INTEGER                         not null,  /*����ID              */
   CONGV004             DATE                            not null,  /*ִ������            */
   CONGV005             INTEGER                         not null,  /*ִ����ID            */
   CONGV006             VARCHAR2(255)                   not null,  /*ִ������            */
   CONGV007             VARCHAR2(255)                   not null,  /*ִ�н��            */
   CONGV008             VARCHAR2(255),                             /*����ܽ�            */
   CONGV009             VARCHAR2(255),                             /*�����ж�����        */
   CONGV010             VARCHAR2(255),                             /*�����ж�Ŀ��        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONGV primary key (CONGV_ID)
);
create unique index AK_TB_CONGV on TB_CONGV (CONGV001,CONGV002,CONGV003,CONGV004);
create sequence SEQ_TB_CONGV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGV to public;
grant index  on TB_CONGV to public;
grant update on TB_CONGV to public; 
grant delete on TB_CONGV to public;  
grant insert on TB_CONGV to public; 
grant select on SEQ_TB_CONGV to public;   