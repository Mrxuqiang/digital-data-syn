/*
================================================================================
��ṹ����:TB_PUBGR
��ṹ����:�������б�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGR;
drop index AK_TB_PUBGR;
drop table TB_PUBGR;
create table TB_PUBGR  (
   PUBGR_ID             INTEGER                         not null,  /*��������ID         */
   PUBGR001             INTEGER                         not null,  /*����ID             */
   PUBGR002             VARCHAR2(50)                    not null,  /*�����ʺ�           */
   PUBGR003             VARCHAR2(255)                   not null,  /*��������           */
   PUBGR004             VARCHAR2(255)                   not null,  /*���е�ַ           */
   PUBGR005             INTEGER                         not null,  /*����ID             */
   PUBGR006             VARCHAR2(1),                               /*�Ƿ�Ĭ��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGR primary key (PUBGR_ID)
);
create unique index AK_TB_PUBGR on TB_PUBGR (PUBGR001,PUBGR002);
create sequence SEQ_TB_PUBGR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGR to public;
grant index  on TB_PUBGR to public;
grant update on TB_PUBGR to public; 
grant delete on TB_PUBGR to public;  
grant insert on TB_PUBGR to public; 
grant select on SEQ_TB_PUBGR to public;   