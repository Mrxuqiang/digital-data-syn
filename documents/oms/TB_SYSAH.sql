/*
================================================================================
��ṹ����:TB_SYSAH
��ṹ����:��ͷ��β�趨��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAH;
drop index AK_TB_SYSAH;
drop table TB_SYSAH;
create table TB_SYSAH  (
   SYSAH_ID             INTEGER                         not null,  /*��ͷ��β�趨ID    */
   SYSAH001             INTEGER                         not null,  /*��ѯ��ͼID        */
   SYSAH002             VARCHAR2(1)                     not null,  /*���:0��ͷ 1��β  */
   SYSAH003             VARCHAR2(1)                     not null,  /*��ʽ��0���� 1��ӡ���� 2ҳ��            */
   SYSAH004             INTEGER,                                   /*��Ԫ��ID          */ww
   SYSAH005             VARCHAR2(255)                              /*��Ԫ����          */
   SYSAH006             VARCHAR2(255)                              /*��Ԫǰ��������    */
   SYSAH007             VARCHAR2(255)                              /*��Ԫ�󸽼�����    */
   SYSAH008             NUMBER(3),                                 /*�к�              */
   SYSAH009             NUMBER(3),                                 /*�к�              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_SYSAH primary key (SYSAH_ID)
);
create unique index AK_TB_SYSAH on TB_SYSAH (SYSAH001,SYSAH002,SYSAH003,SYSAH004);
create sequence SEQ_TB_SYSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAH to public;
grant index  on TB_SYSAH to public;
grant update on TB_SYSAH to public; 
grant delete on TB_SYSAH to public;  
grant insert on TB_SYSAH to public; 
grant select on SEQ_TB_SYSAH to public;   