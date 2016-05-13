/*
================================================================================
��ṹ����:TB_PUBKD
��ṹ����:�������α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBKD;
drop index AK_TB_PUBKD;
drop table TB_PUBKD;
create table TB_PUBKD  (
   PUBKD_ID             INTEGER                         not null,  /*��������ID         */
   PUBKD001             VARCHAR2(4)                     not null,  /*���δ���           */
   PUBKD002             VARCHAR2(40)                    not null,  /*��������           */
   PUBKD003             NUMBER(5,0)                     not null,  /*��ʼ����           */
   PUBKD004             NUMBER(5,0)                     not null,  /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBKD primary key (PUBKD_ID)
);
create unique index AK_TB_PUBKD on TB_PUBKD (PUBKD001);
create sequence SEQ_TB_PUBKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKD to public;
grant index  on TB_PUBKD to public;
grant update on TB_PUBKD to public; 
grant delete on TB_PUBKD to public;  
grant insert on TB_PUBKD to public; 
grant select on SEQ_TB_PUBKD to public;   