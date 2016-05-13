/*
================================================================================
��ṹ����:TB_PUBHH
��ṹ����:��Ʒά����Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHH;
drop index AK_TB_PUBHH;
drop table TB_PUBHH;
create table TB_PUBHH  (
   PUBHH_ID             INTEGER                         not null,  /*ά����ID          */
   PUBHH001             VARCHAR2(2)                     not null,  /*ά����            */
   PUBHH002             VARCHAR2(8)                     not null,  /*ά�������        */
   PUBHH003             VARCHAR2(32)                    not null,  /*ά��������        */
   PUBHH004             VARCHAR2(30)                    not null,  /*ά��������        */
   PUBHH005             VARCHAR2(255),                             /*��ע              */
   PUBHH006		VARCHAR2(1)			not null,  /*�Ƿ�ɶ�          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHH primary key (PUBHH_ID)
);
create unique index AK_TB_PUBHH on TB_PUBHH (PUBHH001,PUBHH002);
create sequence SEQ_TB_PUBHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHH to public;
grant index  on TB_PUBHH to public;
grant update on TB_PUBHH to public; 
grant delete on TB_PUBHH to public;  
grant insert on TB_PUBHH to public; 
grant select on SEQ_TB_PUBHH to public;   