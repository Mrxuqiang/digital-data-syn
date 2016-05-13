/*
================================================================================
��ṹ����:TB_SYSDC
��ṹ����:��ɫ�ֶα�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDC;
drop index AK_TB_SYSDC;
drop table TB_SYSDC;
create table TB_SYSDC  (
   SYSDC_ID             INTEGER                         not null,  /*��ɫ�ֶ�ID       */
   SYSDC001             INTEGER                         not null,  /*��ɫ����ID       */
   SYSDC002             INTEGER                         not null,  /*��ɫID           */
   SYSDC003             INTEGER                         not null,  /*����ID           */
   SYSDC004             VARCHAR2(30)                    not null,  /*����             */
   SYSDC005             VARCHAR2(30)                    not null,  /*�ֶ���           */
   SYSDC006             VARCHAR2(1)                     not null,  /*����,1:�����ֶ�;2:������¼���ֶ�*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDC primary key (SYSDC_ID)
);
create unique index AK_TB_SYSDC on TB_SYSDC (SYSDC002,SYSDC003,SYSDC004);
create sequence SEQ_TB_SYSDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDC to public;
grant index  on TB_SYSDC to public;
grant update on TB_SYSDC to public; 
grant delete on TB_SYSDC to public;  
grant insert on TB_SYSDC to public; 
grant select on SEQ_TB_SYSDC to public;   