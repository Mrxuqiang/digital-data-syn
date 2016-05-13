/*
================================================================================
��ṹ����:TB_PUBGL
��ṹ����:���㷽ʽ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGL;
drop index AK_TB_PUBGL;
drop table TB_PUBGL;
create table TB_PUBGL  (
   PUBGL_ID             INTEGER                         not null,  /*���㷽ʽID         */
   PUBGL001             VARCHAR2(4)                     not null,  /*���㷽ʽ����       */
   PUBGL002             VARCHAR2(30)                    not null,  /*���㷽ʽ����       */
   PUBGL003             NUMBER(4)                       not null,  /*��������           */
   PUBGL004             NUMBER(4)                       not null,  /*��������           */
   PUBGL005             VARCHAR2(1)                     not null,  /*���������         */
   PUBGL006             VARCHAR2(1)                     not null,  /*���������         */
   PUBGL007             NUMBER(4)                       not null,  /*��������           */
   PUBGL008             NUMBER(4)                       not null,  /*��������           */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGL primary key (PUBGL_ID)
);
create unique index AK_TB_PUBGL on TB_PUBGL (PUBGL001);
create sequence SEQ_TB_PUBGL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGL to public;
grant index  on TB_PUBGL to public;
grant update on TB_PUBGL to public; 
grant delete on TB_PUBGL to public;  
grant insert on TB_PUBGL to public; 
grant select on SEQ_TB_PUBGL to public;   