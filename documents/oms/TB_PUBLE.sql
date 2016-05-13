/*
================================================================================
��ṹ����:TB_PUBLE
��ṹ����:��ƿ�Ŀ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLE;
drop index AK_TB_PUBLE;
drop table TB_PUBLE;
create table TB_PUBLE  (
   PUBLE_ID             INTEGER                         not null,  /*��ƿ�Ŀ����ID       */
   PUBLE001             VARCHAR2(4)                     not null,  /*��Ŀ��������         */
   PUBLE002             VARCHAR2(30)                    not null,  /*��Ŀ��������         */
   PUBLE003             VARCHAR2(60),                              /*��Ŀ��������         */
   PUBLE004             VARCHAR2(16),                              /*��Ŀ�㼶             */
   PUBLE005             VARCHAR2(4),                               /*�����¼���Ŀ�㼶     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLE primary key (PUBLE_ID)
);
create unique index AK_TB_PUBLE on TB_PUBLE (PUBLE001);
create sequence SEQ_TB_PUBLE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLE to public;
grant index  on TB_PUBLE to public;
grant update on TB_PUBLE to public; 
grant delete on TB_PUBLE to public;  
grant insert on TB_PUBLE to public; 
grant select on SEQ_TB_PUBLE to public;   