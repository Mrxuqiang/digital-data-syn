/*
================================================================================
��ṹ����:TB_SYSDE
��ṹ����:�û�Ȩ��Ӫ����֯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDE;
drop index AK_TB_SYSDE;
drop table TB_SYSDE;
create table TB_SYSDE  (
   SYSDE_ID             INTEGER                         not null,  /*�û�Ӫ����֯ID   */
   SYSDE001             INTEGER                         not null,  /*�û�Ȩ��ID       */
   SYSDE002             INTEGER                         not null,  /*��˾ID           */
   SYSDE003             INTEGER,                                   /*Ӫ����֯ID       */
   SYSDE004             VARCHAR2(1),                               /*�Ƿ�Ĭ��Ӫ����֯ */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDE primary key (SYSDE_ID)
);
create unique index AK_TB_SYSDE on TB_SYSDE (SYSDE001,SYSDE002,SYSDE003);
create sequence SEQ_TB_SYSDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDE to public;
grant index  on TB_SYSDE to public;
grant update on TB_SYSDE to public; 
grant delete on TB_SYSDE to public;  
grant insert on TB_SYSDE to public; 
grant select on SEQ_TB_SYSDE to public;   