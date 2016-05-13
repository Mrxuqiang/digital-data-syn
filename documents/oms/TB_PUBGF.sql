/*
================================================================================
��ṹ����:TB_PUBGF
��ṹ����:˰�ֱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGF;
drop index AK_TB_PUBGF;
drop table TB_PUBGF;
create table TB_PUBGF  (
   PUBGF_ID             INTEGER                         not null,  /*˰��ID             */
   PUBGF001             VARCHAR2(4)                     not null,  /*˰�ִ���           */
   PUBGF002             VARCHAR2(30)                    not null,  /*˰������           */
   PUBGF003             VARCHAR2(2)                     not null,  /*��Ʊ����           */
   PUBGF004             VARCHAR2(1)                     not null,  /*����               */
   PUBGF005             NUMBER(12,2)                    not null,  /*˰��               */
   PUBGF006             VARCHAR2(1),                               /*��˰               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGF primary key (PUBGF_ID)
);
create unique index AK_TB_PUBGF on TB_PUBGF (PUBGF001);
create sequence SEQ_TB_PUBGF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGF to public;
grant index  on TB_PUBGF to public;
grant update on TB_PUBGF to public; 
grant delete on TB_PUBGF to public;  
grant insert on TB_PUBGF to public; 
grant select on SEQ_TB_PUBGF to public;   