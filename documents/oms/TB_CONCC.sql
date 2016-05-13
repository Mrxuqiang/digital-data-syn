/*
================================================================================
��ṹ����:TB_CONCC
��ṹ����:��ͬ���һ���Թ̶����ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCC;
drop index AK_TB_CONCC;
drop table TB_CONCC;
create table TB_CONCC  (
   CONCC_ID             INTEGER                         not null,  /*��ͬ���һ���Թ̶�����ID    */
   CONCC001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCC002             INTEGER                         not null,  /*����ID              */
   CONCC003             INTEGER                         not null,  /*��ʽID              */
   CONCC004             DATE                            not null,  /*��׼����            */
   CONCC005             NUMBER(12,2)                    not null,  /*��׼��              */
   CONCC006             NUMBER(12,2)                    not null,  /*��׼��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONCC primary key (CONCC_ID)
);
create unique index AK_TB_CONCC on TB_CONCC (CONCC001,CONCC002);
create sequence SEQ_TB_CONCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCC to public;
grant index  on TB_CONCC to public;
grant update on TB_CONCC to public; 
grant delete on TB_CONCC to public;  
grant insert on TB_CONCC to public; 
grant select on SEQ_TB_CONCC to public;   