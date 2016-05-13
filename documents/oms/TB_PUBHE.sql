/*
================================================================================
��ṹ����:TB_PUBHE
��ṹ����:��Ʒά�ȱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHE;
drop index AK_TB_PUBHE;
drop table TB_PUBHE;
create table TB_PUBHE  (
   PUBHE_ID             INTEGER                         not null,  /*��Ʒά��ID        */
   PUBHE001             INTEGER                         not null,  /*��ƷID            */
   PUBHE002             INTEGER                         not null,  /*ά��ID            */
   PUBHE003		VARCHAR2(1)			not null,  /*�Ƿ�ɶ�	       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PUBHE primary key (PUBHE_ID)
);
create unique index AK_TB_PUBHE on TB_PUBHE (PUBHE001,PUBHE002);
create sequence SEQ_TB_PUBHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHE to public;
grant index  on TB_PUBHE to public;
grant update on TB_PUBHE to public; 
grant delete on TB_PUBHE to public;  
grant insert on TB_PUBHE to public; 
grant select on SEQ_TB_PUBHE to public;   