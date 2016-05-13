/*
================================================================================
��ṹ����:TB_PUBID
��ṹ����:¥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBID;
drop index AK_TB_PUBID;
drop table TB_PUBID;
create table TB_PUBID  (
   PUBID_ID             INTEGER                         not null,  /*¥��ID             */
   PUBID001             INTEGER                         not null,  /*��˾ID             */
   PUBID002             INTEGER                         not null,  /*Ӫ����֯ID         */
   PUBID003             VARCHAR2(10)                    not null,  /*¥������           */
   PUBID004             VARCHAR2(30)                    not null,  /*¥������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBID primary key (PUBID_ID)
);
create unique index AK_TB_PUBID on TB_PUBID (PUBID003);
create sequence SEQ_TB_PUBID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBID to public;
grant index  on TB_PUBID to public;
grant update on TB_PUBID to public; 
grant delete on TB_PUBID to public;  
grant insert on TB_PUBID to public; 
grant select on SEQ_TB_PUBID to public;   