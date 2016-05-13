/*
================================================================================
��ṹ����:TB_PUBJA
��ṹ����:��ͬ�Żݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBJA;
drop index AK_TB_PUBJA;
drop table TB_PUBJA;
create table TB_PUBJA  (
   PUBJA_ID             INTEGER                         not null,  /*�Ż�ID             */
   PUBJA001             VARCHAR2(4)                     not null,  /*�Żݴ���           */
   PUBJA002             VARCHAR2(30)                    not null,  /*�Ż�����           */
   PUBJA003             VARCHAR2(255),                             /*�Ż�˵��           */
   PUBJA004             INTEGER                         not null,  /*����ID             */
   PUBJA005             INTEGER                         not null,  /*��ʽID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBJA primary key (PUBJA_ID)
);
create unique index AK_TB_PUBJA on TB_PUBJA (PUBJA001);
create sequence SEQ_TB_PUBJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJA to public;
grant index  on TB_PUBJA to public;
grant update on TB_PUBJA to public; 
grant delete on TB_PUBJA to public;  
grant insert on TB_PUBJA to public; 
grant select on SEQ_TB_PUBJA to public;   