/*
================================================================================
��ṹ����:TB_CONNB
��ṹ����:Ʒ������Э���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONNB;
drop index AK_TB_CONNB;
drop table TB_CONNB;
create table TB_CONNB  (
   CONGB_ID             INTEGER                         not null,  /*Ʒ��Э����ϸID      */
   CONGB001             INTEGER                         not null,  /*Ʒ��Э��ID          */
   CONGB002             INTEGER                         not null,  /*��ƷID              */
   CONGB003             NUMBER(18,3),                              /*��Ͳɹ���          */
   CONGB004             INTEGER,                                   /*��С�ɹ���λ        */
   CONGB005             NUMBER(18,3),                              /*�ɹ���              */
   CONGB006             VARCHAR2(255),                             /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONNB primary key (CONGB_ID)
);
create unique index AK_TB_CONNB on TB_CONNB (CONGB001,CONGB002);
create sequence SEQ_TB_CONNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONNB to public;
grant index  on TB_CONNB to public;
grant update on TB_CONNB to public; 
grant delete on TB_CONNB to public;  
grant insert on TB_CONNB to public; 
grant select on SEQ_TB_CONNB to public;   


