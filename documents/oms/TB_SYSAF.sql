/*
================================================================================
��ṹ����:TB_SYSAF
��ṹ����:������ʾ��Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAF;
drop index AK_TB_SYSAF;
drop table TB_SYSAF;
create table TB_SYSAF  (
   SYSAF_ID             INTEGER                         not null,  /*��ϢID           */
   SYSAF001             VARCHAR2(8)                     not null,  /*��Ϣ����         */
   SYSAF002             INTEGER                         not null,  /*����ID           */
   SYSAF003             VARCHAR2(255),                             /*��Ϣ����         */
   SYSAF004             DATE                            not null,  /*�춯����         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAF primary key (SYSAF_ID)
);
create unique index AK_TB_SYSAF on TB_SYSAF (SYSAF001,SYSAF002);
create sequence SEQ_TB_SYSAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAF to public;
grant index  on TB_SYSAF to public;
grant update on TB_SYSAF to public; 
grant delete on TB_SYSAF to public;  
grant insert on TB_SYSAF to public; 
grant select on SEQ_TB_SYSAF to public;   