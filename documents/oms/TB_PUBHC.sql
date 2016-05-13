/*
================================================================================
��ṹ����:TB_PUBHC
��ṹ����:��Ʒ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHC;
drop index AK_TB_PUBHC;
drop table TB_PUBHC;
create table TB_PUBHC  (
   PUBHC_ID             INTEGER                         not null,  /*Ʒ��ID            */
   PUBHC001             VARCHAR2(16)                    not null,  /*Ʒ�����          */
   PUBHC002             VARCHAR2(30)                    not null,  /*Ʒ������          */
   PUBHC003             INTEGER                         not null,  /*�ϼ�Ʒ��          */
   PUBHC004             INTEGER,                                   /*����¼�������    */
   PUBHC005             INTEGER,                                   /*���Ʒ����        */
   PUBHC006             VARCHAR2(255),                             /*��ע              */
   PUBHC007             VARCHAR2(30),                              /*��ǰ�㼶����      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHC primary key (PUBHC_ID)
);
create unique index AK_TB_PUBHC on TB_PUBHC (PUBHC001);
create sequence SEQ_TB_PUBHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHC to public;
grant index  on TB_PUBHC to public;
grant update on TB_PUBHC to public; 
grant delete on TB_PUBHC to public;  
grant insert on TB_PUBHC to public; 
grant select on SEQ_TB_PUBHC to public;   