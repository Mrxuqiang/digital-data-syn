/*
================================================================================
��ṹ����:TB_PUBGH
��ṹ����:���ڱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBGH;
drop index AK_TB_PUBGH;
drop table TB_PUBGH;
create table TB_PUBGH  (
   PUBGH_ID             INTEGER                         not null,  /*����ID             */
   PUBGH001             VARCHAR2(4)                     not null,  /*���ڴ���           */
   PUBGH002             VARCHAR2(40)                    not null,  /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBGH primary key (PUBGH_ID)
);
create unique index AK_TB_PUBGH on TB_PUBGH (PUBGH001);
create sequence SEQ_TB_PUBGH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGH to public;
grant index  on TB_PUBGH to public;
grant update on TB_PUBGH to public; 
grant delete on TB_PUBGH to public;  
grant insert on TB_PUBGH to public; 
grant select on SEQ_TB_PUBGH to public;   