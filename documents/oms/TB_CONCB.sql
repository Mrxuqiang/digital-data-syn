/*
================================================================================
��ṹ����:TB_CONCB
��ṹ����:��ͬ������ر�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCB;
drop index AK_TB_CONCB;
drop table TB_CONCB;
create table TB_CONCB  (
   CONCB_ID             INTEGER                         not null,  /*��ͬ�������ID      */
   CONCB001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCB002             INTEGER                         not null,  /*̯λ�춯��ID        */
   CONCB003             INTEGER                         not null,  /*����ID              */
   CONCB004             INTEGER                         not null,  /*�����춯��ID        */
   CONCB005             INTEGER                         not null,  /*¥��ID              */
   CONCB006             INTEGER                         not null,  /*¥��ID              */
   CONCB007             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   CONCB008             NUMBER(12,2)                    not null,  /*�������            */
   CONCB009             DATE                            not null,  /*���ؿ�ʼ����        */
   CONCB010             DATE                            not null,  /*���ؽ�������        */
   CONCB011             DATE                            not null,  /*̯λ��ʼ����        */
   CONCB012             DATE                            not null,  /*̯λ��������        */
   CONCB013             NUMBER(12,2)                            ,  /*��̯ϵ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONCB primary key (CONCB_ID)
);
create unique index AK_TB_CONCB on TB_CONCB (CONCB001,CONCB002,CONCB004,CONCB009);
create sequence SEQ_TB_CONCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCB to public;
grant index  on TB_CONCB to public;
grant update on TB_CONCB to public; 
grant delete on TB_CONCB to public;  
grant insert on TB_CONCB to public; 
grant select on SEQ_TB_CONCB to public;   