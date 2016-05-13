/*
================================================================================
��ṹ����:TB_CONBX
��ṹ����:��ͬ�Żݵ������뷶Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBX;
drop index AK_TB_CONBX;
drop table TB_CONBX;
create table TB_CONBX  (
   CONBX_ID             INTEGER                         not null,  /*�Żݵ���Ч��ΧID    */
   CONBX001             INTEGER                         not null,  /*�Żݵ�ID            */
   CONBX002             INTEGER,                                   /*Ӫ����֯ID          */
   CONBX003             INTEGER,                                   /*¥��ID              */
   CONBX004             INTEGER,                                   /*С��ID              */
   CONBX005             INTEGER,                                   /*̯λ���ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBX primary key (CONBX_ID)
);
create unique index AK_TB_CONBX on TB_CONBX (CONBX001,CONBX002,CONBX003,CONBX004,CONBX005);
create sequence SEQ_TB_CONBX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBX to public;
grant index  on TB_CONBX to public;
grant update on TB_CONBX to public; 
grant delete on TB_CONBX to public;  
grant insert on TB_CONBX to public; 
grant select on SEQ_TB_CONBX to public;   