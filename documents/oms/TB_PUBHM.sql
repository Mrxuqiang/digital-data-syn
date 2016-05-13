/*
================================================================================
��ṹ����:TB_PUBHM
��ṹ����:��Ʒ��Ա�ο��۱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHM;
drop index AK_TB_PUBHM;
drop table TB_PUBHM;
create table TB_PUBHM  (
   PUBHM_ID             INTEGER                         not null,  /*��Ա�ο���ID      */
   PUBHM001             INTEGER                         not null,  /*��ƷID            */
   PUBHM002             INTEGER                         not null,  /*��Ա�ȼ�ID        */
   PUBHM003             NUMBER(12,2)                    not null,  /*��Ա�ο���        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHM primary key (PUBHM_ID)
);
create unique index AK_TB_PUBHM on TB_PUBHM (PUBHM001,PUBHM002);
create sequence SEQ_TB_PUBHM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHM to public;
grant index  on TB_PUBHM to public;
grant update on TB_PUBHM to public; 
grant delete on TB_PUBHM to public;  
grant insert on TB_PUBHM to public; 
grant select on SEQ_TB_PUBHM to public;   