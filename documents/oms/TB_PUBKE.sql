/*
================================================================================
��ṹ����:TB_PUBKE
��ṹ����:���˿ۼ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBKE;
drop index AK_TB_PUBKE;
drop table TB_PUBKE;
create table TB_PUBKE  (
   PUBKE_ID             INTEGER                         not null,  /*�ۼ���ID           */
   PUBKE001             VARCHAR2(4)                     not null,  /*�ۼ�����           */
   PUBKE002             VARCHAR2(40)                    not null,  /*�ۼ�����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBKE primary key (PUBKE_ID)
);
create unique index AK_TB_PUBKE on TB_PUBKE (PUBKE001);
create sequence SEQ_TB_PUBKE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKE to public;
grant index  on TB_PUBKE to public;
grant update on TB_PUBKE to public; 
grant delete on TB_PUBKE to public;  
grant insert on TB_PUBKE to public; 
grant select on SEQ_TB_PUBKE to public;   