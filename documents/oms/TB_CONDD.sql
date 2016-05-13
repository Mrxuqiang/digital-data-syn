/*
================================================================================
��ṹ����:TB_CONDD
��ṹ����:��ͬ��ֹ�ʵ��Ż���ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONDD;
drop index AK_TB_CONDD;
drop table TB_CONDD;
create table TB_CONDD  (
   CONDD_ID             INTEGER                         not null,  /*��ͬ��ֹ�ʵ��Ż���ϸID*/
   CONDD001             INTEGER                         not null,  /*��ͬ��ֹID          */
   CONDD002             INTEGER                         not null,  /*��ͬ��ֹ�����ʵ�ID  */
   CONDD003             INTEGER                         not null,  /*����ID              */
   CONDD004             INTEGER                         not null,  /*�Żݴ���ID          */
   CONDD005             DATE                            not null,  /*�ʵ�����            */
   CONDD006             NUMBER(12,4)                    not null,  /*�Żݽ��            */
   CONDD007             INTEGER,                                   /*��ͬ�����Ż�ID      */
   CONDD008             NUMBER(12,4)                    not null,  /*�Żݶ�              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONDD primary key (CONDD_ID)
);
create unique index AK_TB_CONDD on TB_CONDD (CONDD001,CONDD002,CONDD003,CONDD004,CONDD005);
create sequence SEQ_TB_CONDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDD to public;
grant index  on TB_CONDD to public;
grant update on TB_CONDD to public; 
grant delete on TB_CONDD to public;  
grant insert on TB_CONDD to public; 
grant select on SEQ_TB_CONDD to public;   