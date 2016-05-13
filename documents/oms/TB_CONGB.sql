/*
================================================================================
��ṹ����:TB_CONGB
��ṹ����:Ʒ������Э���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONGB;
drop index AK_TB_CONGB;
drop table TB_CONGB;
create table TB_CONGB  (
   CONGB_ID             INTEGER                         not null,  /*Э���ӱ�ID          */
   CONGB001             INTEGER                         not null,  /*Э��ID              */
   CONGB002             INTEGER                         not null,  /*��ƷID              */
   CONGB003             INTEGER,                                   /*��С�ɹ���λID      */
   CONGB004             NUMBER(12,2),                              /*�ɹ���              */
   CONGB005             NUMBER(12,2),                              /*��Ͳɹ���          */
   CONGB006             NUMBER(12,2),                              /*�ɹ�����            */
   CONGB007             NUMBER(12,2),                              /*�ɹ�����            */
   CONGB008             NUMBER(12,2),                              /*�ۿ���(%)           */
   CONGB009             NUMBER(12,2),                              /*������              */
   CONGB010             NUMBER(5),                                 /*Ĭ�Ϲ�������        */
   CONGB011             NUMBER(12,2),                              /*�������(%)         */
   CONGB012             INTEGER,                                   /*˰��                */  modi by 20091020
   CONGB013             NUMBER(12,2),                              /*˰��                */  modi by 20091020
   CONGB014             NUMBER(12,2),                              /*˰ǰ����            */  modi by 20091020 
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONGB primary key (CONGB_ID)
);
create unique index AK_TB_CONGB on TB_CONGB (CONGB001,CONGB002);
create sequence SEQ_TB_CONGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGB to public;
grant index  on TB_CONGB to public;
grant update on TB_CONGB to public; 
grant delete on TB_CONGB to public;  
grant insert on TB_CONGB to public; 
grant select on SEQ_TB_CONGB to public;   