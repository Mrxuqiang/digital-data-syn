/*
================================================================================
��ṹ����:TB_MEDBA
��ṹ����:ý�嶨���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDBA;
drop index AK_TB_MEDBA;
drop table TB_MEDBA;
create table TB_MEDBA  (
   MEDBA_ID             INTEGER                         not null,  /*ý��ID             */
   MEDBA001             VARCHAR2(16)                    not null,  /*ý����           */
   MEDBA002             VARCHAR2(20)                    not null,  /*ý������           */
   MEDBA003             INTEGER                         not null,  /*ý�����ID         */
   MEDBA004             INTEGER                         not null,  /*ý�弶��ID         */
   MEDBA005             INTEGER,				   /*����ID             */
   MEDBA006             INTEGER,				   /*����ID             */
   MEDBA007             INTEGER,				   /*����ID             */
   MEDBA008             INTEGER,				   /*ʡ��ID             */
   MEDBA009             INTEGER,				   /*����ID             */
   MEDBA010             INTEGER,                                   /*����ID             */
   MEDBA011             NUMBER(12),                                /*������Ա           */
   MEDBA012             VARCHAR2(100),                             /*���ӷ�Χ           */
   MEDBA013             VARCHAR2(10),                              /*�ʱ�               */ 
   MEDBA014             VARCHAR2(255),                             /*��ַ               */
   MEDBA015             VARCHAR2(10),                              /*��ϵ��             */
   MEDBA016             VARCHAR2(30),                              /*�绰               */
   MEDBA017             VARCHAR2(30),                              /*����               */
   MEDBA018             VARCHAR2(30),                              /*�ƶ��绰           */  
   MEDBA019             VARCHAR2(60),                              /*E_Mail             */
   MEDBA020             VARCHAR2(20),                              /*˰��               */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDBA primary key (MEDBA_ID)
);
create unique index AK_TB_MEDBA on TB_MEDBA (MEDBA001);
create sequence SEQ_TB_MEDBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBA to public;
grant index  on TB_MEDBA to public;
grant update on TB_MEDBA to public; 
grant delete on TB_MEDBA to public;  
grant insert on TB_MEDBA to public; 
grant select on SEQ_TB_MEDBA to public;   