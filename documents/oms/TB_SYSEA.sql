/*
================================================================================
��ṹ����:TB_SYSEA
��ṹ����:��̨�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSEA;
drop index AK_TB_SYSEA;
drop table TB_SYSEA;
create table TB_SYSEA  (
   SYSEA_ID             INTEGER                         not null,  /*����ID           */
   SYSEA001             VARCHAR2(4)                     not null,  /*�������         */
   SYSEA002             VARCHAR2(30)                    not null,  /*��������         */
   SYSEA003             VARCHAR2(1)                     not null,  /*��������         */
   SYSEA004             VARCHAR2(120)                   not null,  /*������         */
   SYSEA005             VARCHAR2(255),                             /*��������         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSEA primary key (SYSEA_ID)
);
create unique index AK_TB_SYSEA on TB_SYSEA (SYSEA001);
create sequence SEQ_TB_SYSEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEA to public;
grant index  on TB_SYSEA to public;
grant update on TB_SYSEA to public; 
grant delete on TB_SYSEA to public;  
grant insert on TB_SYSEA to public; 
grant select on SEQ_TB_SYSEA to public;   