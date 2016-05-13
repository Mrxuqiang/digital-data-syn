/*
================================================================================
��ṹ����:TB_CONBC
��ṹ����:��ͬ�Żݵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBC;
drop index AK_TB_CONBC;
drop table TB_CONBC;
create table TB_CONBC  (
   CONBC_ID             INTEGER                         not null,  /*��ͬ�Żݵ���ϸID    */
   CONBC001             INTEGER                         not null,  /*�Żݵ�չλID        */
   CONBC002             INTEGER                         not null,  /*�Ż���ĿID          */
   CONBC003             DATE                            not null,  /*��ʼ����            */
   CONBC004             DATE                            not null,  /*��������            */
   CONBC005             NUMBER(12,2),				   /*�Żݵ���            */
   CONBC006             NUMBER(12,2),				   /*�Ż��ܶ�            */
   CONBC007             NUMBER(12,2),				   /*�ٷֱ�              */
   CONBC008             NUMBER(12,2),				   /*�ۼ��Ż��ܶ�        */
   CONBC009             NUMBER(12,2),				   /*�ۼưٷֱ�          */
   CONBC010             INTEGER,				   /*��ͬ�Żݵ�ID        */
   CONBC011             INTEGER,				   /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONBC primary key (CONBC_ID)
);
create unique index AK_TB_CONBC on TB_CONBC (CONBC001,CONBC002,CONBC003);
create sequence SEQ_TB_CONBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBC to public;
grant index  on TB_CONBC to public;
grant update on TB_CONBC to public; 
grant delete on TB_CONBC to public;  
grant insert on TB_CONBC to public; 
grant select on SEQ_TB_CONBC to public;   