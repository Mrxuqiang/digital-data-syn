/*
================================================================================
��ṹ����:TB_SUPAD
��ṹ����:���̹���ģ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAD;
drop index AK_TB_SUPAD;
drop table TB_SUPAD;
create table TB_SUPAD  (
   SUPAD_ID             INTEGER                         not null,  /*����ģ��ID          */
   SUPAD001             VARCHAR2(10)                    not null,  /*����ģ�����        */
   SUPAD002             VARCHAR2(30)                    not null,  /*����ģ������        */
   SUPAD003             VARCHAR2(1),                               /*�Ƿ�ͣ��            */
   SUPAD004             VARCHAR2(1),                               /*�������� 1.���̻ 2.Ԥ�Ǽ� */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAD primary key (SUPAD_ID)
);
create unique index AK_TB_SUPAD on TB_SUPAD (SUPAD001,SUPAD002);
create sequence SEQ_TB_SUPAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAD to public;
grant index  on TB_SUPAD to public;
grant update on TB_SUPAD to public; 
grant delete on TB_SUPAD to public;  
grant insert on TB_SUPAD to public; 
grant select on SEQ_TB_SUPAD to public;   