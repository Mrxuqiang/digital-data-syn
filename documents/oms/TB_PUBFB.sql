/*
================================================================================
��ṹ����:TB_PUBFB
��ṹ����:���ݱ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFB;
drop index AK_TB_PUBFB;
drop table TB_PUBFB;
create table TB_PUBFB  (
   PUBFB_ID             INTEGER                         not null,  /*�������ID         */
   PUBFB001             VARCHAR2(3)                     not null,  /*����������       */
   PUBFB002             VARCHAR2(30)                    not null,  /*�����������       */
   PUBFB003             VARCHAR2(1)                     not null,  /*����               */
   PUBFB004             VARCHAR2(1)                     not null,  /*����               */
   PUBFB005             NUMBER(2)                       not null,  /*��ˮ��             */
   PUBFB006             VARCHAR2(1)                     not null,  /*Ӫ����֯ǰ����     */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBFB primary key (PUBFB_ID)
);
create unique index AK_TB_PUBFB on TB_PUBFB (PUBFB001);
create sequence SEQ_TB_PUBFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFB to public;
grant index  on TB_PUBFB to public;
grant update on TB_PUBFB to public; 
grant delete on TB_PUBFB to public;  
grant insert on TB_PUBFB to public; 
grant select on SEQ_TB_PUBFB to public;   