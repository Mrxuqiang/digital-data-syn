/*
================================================================================
��ṹ����:TB_PRCAD
��ṹ����:�۸�������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PRCAD;
drop index AK_TB_PRCAD;
drop table TB_PRCAD;
create table TB_PRCAD  (
   PRCAD_ID             INTEGER                         not null,  /*�۸������ID        */
   PRCAD001             VARCHAR2(16)                    not null,  /*���������          */
   PRCAD002             VARCHAR2(60)                    not null,  /*����������          */
   PRCAD003             INTEGER                         not null,  /*�ƶ�Ӫ����֯        */
   PRCAD004             INTEGER,                                   /*¼����ID            */
   PRCAD005             DATE,                                      /*¼������            */
   PRCAD006             INTEGER,                                   /*�����ID            */
   PRCAD007             DATE,                                      /*�������            */
   PRCAD008             VARCHAR2(1)                      not null, /*���״̬            */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_PRCAD primary key (PRCAD_ID)
);
create unique index AK_TB_PRCAD on TB_PRCAD (PRCAD001,FLAG);
create sequence SEQ_TB_PRCAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAD to public;
grant index  on TB_PRCAD to public;
grant update on TB_PRCAD to public; 
grant delete on TB_PRCAD to public;  
grant insert on TB_PRCAD to public; 
grant select on SEQ_TB_PRCAD to public;   