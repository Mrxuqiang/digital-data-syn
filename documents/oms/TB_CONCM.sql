/*
================================================================================
��ṹ����:TB_CONCM
��ṹ����:��ͬ����ʵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCM;
drop index AK_TB_CONCM;
drop table TB_CONCM;
create table TB_CONCM  (
   CONCM_ID             INTEGER                         not null,  /*��ͬ����ʵ��Ż���ϸID*/
   CONCM001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCM002             INTEGER                         not null,  /*��ͬ����ʵ�ID      */
   CONCM003             INTEGER                         not null,  /*����ID              */
   CONCM004             INTEGER                         not null,  /*�Żݴ���ID          */
   CONCM005             DATE                            not null,  /*�ʵ�����            */
   CONCM006             NUMBER(12,2)                    not null,  /*�Żݽ��            */
   CONCM007             INTEGER,                                   /*��ͬ�����Ż�ID      */
   CONCM008             NUMBER(12,2)                    not null,  /*�Żݶ�              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONCM primary key (CONCM_ID)
);
create unique index AK_TB_CONCM on TB_CONCM (CONCM001,CONCM002,CONCM003,CONCM004,CONCM005);
create sequence SEQ_TB_CONCM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCM to public;
grant index  on TB_CONCM to public;
grant update on TB_CONCM to public; 
grant delete on TB_CONCM to public;  
grant insert on TB_CONCM to public; 
grant select on SEQ_TB_CONCM to public;   