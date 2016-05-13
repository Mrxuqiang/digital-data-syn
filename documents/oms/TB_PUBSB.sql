/*
================================================================================
��ṹ����:TB_PUBSB
��ṹ����:�������ض��ձ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBSB;
drop index AK_TB_PUBSB;
drop table TB_PUBSB;
create table TB_PUBSB  (
   PUBSB_ID             INTEGER                         not null,  /*�������ض���ID     */
   PUBSB001             INTEGER,                                   /*����ID             */
   PUBSB002             INTEGER,                                   /*Ӱ������ID               */  
   PUBSB003             VARCHAR2(10),                              /*�ֶα���             */  
   PUBSB004             INTEGER,                                   /*��Ŀ����ID             */          
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER(1),                                 /*����״̬               */
   constraint PK_TB_PUBSB primary key (PUBSB_ID)
);
create unique index AK_TB_PUBSB on TB_PUBSB (PUBSB001,PUBSB002,PUBSB003);
create sequence SEQ_TB_PUBSB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBSB to public;
grant index  on TB_PUBSB to public;
grant update on TB_PUBSB to public; 
grant delete on TB_PUBSB to public;  
grant insert on TB_PUBSB to public; 
grant select on SEQ_TB_PUBSB to public;   