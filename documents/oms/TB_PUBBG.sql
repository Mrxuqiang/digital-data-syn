/*
================================================================================
��ṹ����:TB_PUBBG
��ṹ����:С�����ϱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBG;
drop index AK_TB_PUBBG;
drop table TB_PUBBG;
create table TB_PUBBG  (
   PUBBG_ID             INTEGER                         not null,  /*С��ID             */
   PUBBG001             VARCHAR2(8)                     not null,  /*С������           */
   PUBBG002             VARCHAR2(20)                    not null,  /*С������           */
   PUBBG003             INTEGER                         not null,  /*����ID             */
   PUBBG004             NUMBER(12,2),				   /*С�����           */
   PUBBG005             NUMBER(12,2),				   /*С��¥����         */
   PUBBG006             NUMBER(12,2),				   /*С���˿�           */
   PUBBG007             VARCHAR2(100),				   /*������Ⱥ           */
   PUBBG008             VARCHAR2(100),				   /*��ע	        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBG primary key (PUBBG_ID)
);
create unique index AK_TB_PUBBG on TB_PUBBG (PUBBG001);
create sequence SEQ_TB_PUBBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBG to public;
grant index  on TB_PUBBG to public;
grant update on TB_PUBBG to public; 
grant delete on TB_PUBBG to public;  
grant insert on TB_PUBBG to public; 
grant select on SEQ_TB_PUBBG to public;   