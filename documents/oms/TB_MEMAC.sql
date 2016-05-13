/*
================================================================================
��ṹ����:TB_MEMAC
��ṹ����:����ȼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAC;
drop index AK_TB_MEMAC;
drop table TB_MEMAC;
create table TB_MEMAC  (
   MEMAC_ID             INTEGER                         not null,  /*����ȼ�ID         */
   MEMAC001             VARCHAR2(4)                     not null,  /*����ȼ�����       */
   MEMAC002             VARCHAR2(30)                    not null,  /*����ȼ�����       */
   MEMAC003             NUMBER(12)                      not null,  /*��������           */
   MEMAC004             NUMBER(12)                      not null,  /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAC primary key (MEMAC_ID)
);
create unique index AK_TB_MEMAC on TB_MEMAC (MEMAC001);
create sequence SEQ_TB_MEMAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAC to public;
grant index  on TB_MEMAC to public;
grant update on TB_MEMAC to public; 
grant delete on TB_MEMAC to public;  
grant insert on TB_MEMAC to public; 
grant select on SEQ_TB_MEMAC to public;   