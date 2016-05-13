/*
================================================================================
��ṹ����:TB_PUBHF
��ṹ����:��Ʒ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHF;
drop index AK_TB_PUBHF;
drop table TB_PUBHF;
create table TB_PUBHF  (
   PUBHF_ID             INTEGER                         not null,  /*����ID            */
   PUBHF001             INTEGER                         not null,  /*��ƷID            */
   PUBHF002             INTEGER                         not null,  /*��λID            */
   PUBHF003             VARCHAR2(1)                     not null,  /*��������          */
   PUBHF004             VARCHAR2(32)                    not null,  /*�����            */
   PUBHF005             INTEGER,                                   /*ά��1             */
   PUBHF006             INTEGER,                                   /*ά��2             */
   PUBHF007             INTEGER,                                   /*ά��3             */
   PUBHF008             INTEGER,                                   /*ά��4             */
   PUBHF009             INTEGER,                                   /*ά��5             */
   PUBHF010             VARCHAR2(1)                     not null,  /*��Ч��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */ 
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHF primary key (PUBHF_ID)
);
create unique index AK_TB_PUBHF on TB_PUBHF (PUBHF004);
create sequence SEQ_TB_PUBHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHF to public;
grant index  on TB_PUBHF to public;
grant update on TB_PUBHF to public; 
grant delete on TB_PUBHF to public;  
grant insert on TB_PUBHF to public; 
grant select on SEQ_TB_PUBHF to public;   