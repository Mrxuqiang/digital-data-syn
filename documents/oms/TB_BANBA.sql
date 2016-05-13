/*
================================================================================
��ṹ����:TB_BANBA
��ṹ����:Ʊ�ݹ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BANBA;
drop index AK_TB_BANBA;
drop table TB_BANBA;
create table TB_BANBA  (
   BANBA_ID             INTEGER                              not null,  /*Ʊ�ݹ�������ID      */
   BANBA001             INTEGER                              not null,  /*Ʊ������            */
   BANBA002             INTEGER                              not null,  /*����                */
   BANBA003             INTEGER,                                        /*���ò���            */
   BANBA004             INTEGER,                                        /*������              */
   BANBA005             DATE                                 not null,  /*��������            */
   BANBA006             INTEGER                              not null,  /*�����˺�            */
   BANBA007             NUMBER(16,2),                                   /*���ù�����          */
   BANBA008             VARCHAR2(30)                         not null,  /*Ʊ��                */
   BANBA009             NUMBER(16,2),                                   /*������              */
   BANBA010             NUMBER(4)                            not null,  /*����                */
   CREATE_USER          VARCHAR2(12),                                   /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                   /*������Ա����          */                               
   CREATE_DATE          DATE,                                           /*��������              */
   MODIFIER             VARCHAR2(12),                                   /*�޸���Ա              */
   MODI_DATE            DATE,                                           /*�޸�����              */
   FLAG                 NUMBER(1),                                      /*����״̬              */
   constraint PK_TB_BANBA priMAry key (BANBA_ID)
);
create unique index AK_TB_BANBA on TB_BANBA (BANBA_ID,BANBA001);
create sequence SEQ_TB_BANBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANBA to public;
grant index  on TB_BANBA to public;
grant update on TB_BANBA to public; 
grant delete on TB_BANBA to public;  
grant insert on TB_BANBA to public; 
grant select on SEQ_TB_BANBA to public;   