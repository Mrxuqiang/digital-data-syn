/*
================================================================================
��ṹ����:TB_SYSAI
��ṹ����:������ʾ��ʽ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAI;
drop index AK_TB_SYSAI;
drop table TB_SYSAI;
create table TB_SYSAI  (
   SYSAI_ID             INTEGER                         not null,  /*�����ʽID       */
   SYSAI001             INTEGER                         not null,  /*����ID           */
   SYSAI002             INTEGER                         not null,  /*�ֶ�ID           */
   SYSAI003             VARCHAR2(1),                               /*�Ƿ�ΪKey        */
   SYSAI004             VARCHAR2(1),                               /*�Ƿ���ʾ         */
   SYSAI005             VARCHAR2(1),                               /*�Ƿ��¼��       */
   SYSAI006             VARCHAR2(1),                               /*�Ƿ�Ϊ��Ҫ�ֶ�   */
   SYSAI007             VARCHAR2(255),                             /*��ʾ��ʽ         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAI primary key (SYSAI_ID)
);
create unique index AK_TB_SYSAI on TB_SYSAI (SYSAI001,SYSAI002);
create sequence SEQ_TB_SYSAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAI to public;
grant index  on TB_SYSAI to public;
grant update on TB_SYSAI to public; 
grant delete on TB_SYSAI to public;  
grant insert on TB_SYSAI to public; 
grant select on SEQ_TB_SYSAI to public;   