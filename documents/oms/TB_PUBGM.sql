/*
================================================================================
��ṹ����:TB_PUBGM
��ṹ����:��ͬ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGM;
drop index AK_TB_PUBGM;
drop table TB_PUBGM;
create table TB_PUBGM  (
   PUBGM_ID             INTEGER                         not null,  /*��ͬ����ID         */
   PUBGM001             VARCHAR2(4)                     not null,  /*��ͬ�������       */
   PUBGM002             VARCHAR2(30)                    not null,  /*��ͬ��������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGM primary key (PUBGM_ID)
);
create unique index AK_TB_PUBGM on TB_PUBGM (PUBGM001);
create sequence SEQ_TB_PUBGM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGM to public;
grant index  on TB_PUBGM to public;
grant update on TB_PUBGM to public; 
grant delete on TB_PUBGM to public;  
grant insert on TB_PUBGM to public; 
grant select on SEQ_TB_PUBGM to public;   