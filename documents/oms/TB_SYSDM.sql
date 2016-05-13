/*
================================================================================
��ṹ����:TB_SYSDM
��ṹ����:Ȩ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSDM;
drop index AK_TB_SYSDM;
drop table TB_SYSDM;
create table TB_SYSDM  (
   SYSDM_ID             INTEGER                         not null,  /*Ȩ����ID         */
   SYSDM001             VARCHAR2(14)                     not null, /*Ȩ�������       */
   SYSDM002             VARCHAR2(30)                    not null,  /*Ȩ��������       */
   SYSDM003             VARCHAR2(30)                    not null,  /*��ע��Ϣ           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                              
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSDM primary key (SYSDM_ID)
);
create unique index AK_TB_SYSDM on TB_SYSDM (SYSDM_ID,SYSDM001);
create sequence SEQ_TB_SYSDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDM to public;
grant index  on TB_SYSDM to public;
grant update on TB_SYSDM to public; 
grant delete on TB_SYSDM to public;  
grant insert on TB_SYSDM to public; 
grant select on SEQ_TB_SYSDM to public;   