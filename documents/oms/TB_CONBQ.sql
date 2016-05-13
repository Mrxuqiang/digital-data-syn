/*
================================================================================
��ṹ����:TB_CONBQ
��ṹ����:��ͬ�ʵ��Ż���ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBQ;
drop index AK_TB_CONBQ;
drop table TB_CONBQ;
create table TB_CONBQ  (
   CONBQ_ID             INTEGER                         not null,  /*��ͬ�ʵ��Ż���ϸID  */
   CONBQ001             INTEGER                         not null,  /*��ͬID              */
   CONBQ002             INTEGER                         not null,  /*��ͬ�ʵ�ID          */
   CONBQ003             INTEGER                         not null,  /*����ID              */
   CONBQ004             INTEGER                         not null,  /*�Ż�ID              */
   CONBQ005             DATE                            not null,  /*�ʵ�����            */
   CONBQ006             NUMBER(12,2)                    not null,  /*�Żݽ��            */
   CONBQ007             INTEGER,                                   /*��ͬ�����Ż�ID      */
   CONBQ008             NUMBER(12,2)                    not null,  /*�Żݶ�              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBQ primary key (CONBQ_ID)
);
create unique index AK_TB_CONBQ on TB_CONBQ (CONBQ001,CONBQ002,CONBQ003,CONBQ004,CONBQ005);
create sequence SEQ_TB_CONBQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBQ to public;
grant index  on TB_CONBQ to public;
grant update on TB_CONBQ to public; 
grant delete on TB_CONBQ to public;  
grant insert on TB_CONBQ to public; 
grant select on SEQ_TB_CONBQ to public;   