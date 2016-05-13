/*
================================================================================
��ṹ����:TB_CONZB
��ṹ����:�ʱ�����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONZB;
drop index AK_TB_CONZB;
drop table TB_CONZB;
create table TB_CONZB  (
   CONZB_ID             INTEGER                         not null,  /*�ʱ�����ϸID      */
   CONZB001             INTEGER                         not null,  /*�ʱ���ID          */
   CONZB002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CONZB003             INTEGER                         not null,  /*��ͬID            */
   CONZB004             INTEGER                         not null,  /*����ID            */
   CONZB005             INTEGER                         not null,  /*С��ID            */
   CONZB006             VARCHAR2(1)                     not null,  /*��������          */
   CONZB007             INTEGER                         not null,  /*����ID            */
   CONZB008             VARCHAR2(30)                    not null,  /*���ݺ���          */
   CONZB009             DATE                            not null,  /*¼������          */
   CONZB010             VARCHAR2(1)                     not null,  /*�⸶��ʶ          */
   CONZB011             NUMBER(12,2)                    not null,  /*���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_CONZB primary key (CONZB_ID)
);
create unique index AK_TB_CONZB on TB_CONZB (CONZB001,CONZB002,CONZB006,CONZB007);
create sequence SEQ_TB_CONZB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONZB to public;
grant index  on TB_CONZB to public;
grant update on TB_CONZB to public; 
grant delete on TB_CONZB to public;  
grant insert on TB_CONZB to public; 
grant select on SEQ_TB_CONZB to public;   