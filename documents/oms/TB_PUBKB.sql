/*
================================================================================
��ṹ����:TB_PUBKB
��ṹ����:����ƾ֤�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBKB;
drop index AK_TB_PUBKB;
drop table TB_PUBKB;
create table TB_PUBKB  (
   PUBKB_ID             INTEGER                         not null,  /*����ƾ֤����ID     */
   PUBKB001             VARCHAR2(4)                     not null,  /*ƾ֤�������       */
   PUBKB002             VARCHAR2(30)                    not null,  /*ƾ֤��������       */
   PUBKB003             VARCHAR2(1)                     not null,  /*ҵ������           */
   PUBKB004             VARCHAR2(1),                               /*�Ƿ�ͣ��           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBKB primary key (PUBKB_ID)
);
create unique index AK_TB_PUBKB on TB_PUBKB (PUBKB001);
create sequence SEQ_TB_PUBKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKB to public;
grant index  on TB_PUBKB to public;
grant update on TB_PUBKB to public; 
grant delete on TB_PUBKB to public;  
grant insert on TB_PUBKB to public; 
grant select on SEQ_TB_PUBKB to public;   