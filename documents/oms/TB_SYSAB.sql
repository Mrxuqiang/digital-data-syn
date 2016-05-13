/*
================================================================================
��ṹ����:TB_SYSAB
��ṹ����:ϵͳģ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAB;
drop index AK_TB_SYSAB;
drop table TB_SYSAB;
create table TB_SYSAB  (
   SYSAB_ID             INTEGER                         not null,  /*ģ��ID           */
   SYSAB001             INTEGER                         not null,  /*����ID           */
   SYSAB002             VARCHAR2(4)                     not null,  /*ģ�����         */
   SYSAB003             VARCHAR2(60)                    not null,  /*ģ������         */
   SYSAB004             VARCHAR2(255),                             /*ģ������·��     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAB primary key (SYSAB_ID)
);
create unique index AK_TB_SYSAB on TB_SYSAB (SYSAB001,SYSAB002);
create sequence SEQ_TB_SYSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAB to public;
grant index  on TB_SYSAB to public;
grant update on TB_SYSAB to public; 
grant delete on TB_SYSAB to public;  
grant insert on TB_SYSAB to public; 
grant select on SEQ_TB_SYSAB to public;   