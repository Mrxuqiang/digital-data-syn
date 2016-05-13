/*
================================================================================
��ṹ����:TB_PUBGP
��ṹ����:�������ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGP;
drop index AK_TB_PUBGP;
drop table TB_PUBGP;
create table TB_PUBGP  (
   PUBGP_ID             INTEGER                         not null,  /*��������ID         */
   PUBGP001             INTEGER                         not null,  /*����ID             */
   PUBGP002             INTEGER                         not null,  /*֤������ID         */
   PUBGP003             VARCHAR2(40)                    not null,  /*֤������           */
   PUBGP004             VARCHAR2(30)                    not null,  /*��֤��             */
   PUBGP005             DATE,                                      /*��Ч������         */
   PUBGP006             DATE,                                      /*��Ч��ֹ��         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGP primary key (PUBGP_ID)
);
create unique index AK_TB_PUBGP on TB_PUBGP (PUBGP001,PUBGP002);
create sequence SEQ_TB_PUBGP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGP to public;
grant index  on TB_PUBGP to public;
grant update on TB_PUBGP to public; 
grant delete on TB_PUBGP to public;  
grant insert on TB_PUBGP to public; 
grant select on SEQ_TB_PUBGP to public;   