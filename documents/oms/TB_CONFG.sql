/*
================================================================================
��ṹ����:TB_CONFG
��ṹ����:��Ӧ�̺�ͬ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFG;
drop index AK_TB_CONFG;
drop table TB_CONFG;
create table TB_CONFG  (
   CONFG_ID             INTEGER                         not null,  /*��ͬ�������ID      */
   CONFG001             INTEGER                         not null,  /*��ͬ���ID          */
   CONFG002             INTEGER                         not null,  /*����ID              */
   CONFG003             VARCHAR2(1)                     not null,  /*��������            */
   CONFG004             VARCHAR2(1)                     not null,  /*�ֶμ��㷽��        */
   CONFG005             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONFG006             VARCHAR2(1)                     not null,  /*��׼Ӫ����֯        */
   CONFG007             VARCHAR2(1)                     not null,  /*��׼����            */
   CONFG008             NUMBER(12,2),                              /*��׼���ñ���(%)     */
   CONFG009             NUMBER(12,2),                              /*��������(%)         */
   CONFG010             NUMBER(12,2),                              /*ë������            */
   CONFG011             NUMBER(12,2),                              /*ë������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFG primary key (CONFG_ID)
);
create unique index AK_TB_CONFG on TB_CONFG (CONFG001,CONFG002,CONFG003,CONFG005);
create sequence SEQ_TB_CONFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFG to public;
grant index  on TB_CONFG to public;
grant update on TB_CONFG to public; 
grant delete on TB_CONFG to public;  
grant insert on TB_CONFG to public; 
grant select on SEQ_TB_CONFG to public;   