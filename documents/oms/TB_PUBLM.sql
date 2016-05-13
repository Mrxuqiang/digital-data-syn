/*
================================================================================
��ṹ����:TB_PUBLM
��ṹ����:��ƿ�Ŀ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLM;
drop index AK_TB_PUBLM;
drop table TB_PUBLM;
create table TB_PUBLM  (
   PUBLM_ID             INTEGER                         not null,  /*��ƿ�Ŀ����ID       */
   PUBLM001             INTEGER                         not null,  /*��Ŀ����ID           */
   PUBLM002             INTEGER                         not null,  /*��������ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBLM primary key (PUBLM_ID)
);
create unique index AK_TB_PUBLM on TB_PUBLM (PUBLM001,PUBLM002);
create sequence SEQ_TB_PUBLM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLM to public;
grant index  on TB_PUBLM to public;
grant update on TB_PUBLM to public; 
grant delete on TB_PUBLM to public;  
grant insert on TB_PUBLM to public; 
grant select on SEQ_TB_PUBLM to public;   