/*
================================================================================
��ṹ����:TB_INVNC
��ṹ����:�ؿⵥ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVNC;
drop index AK_TB_INVNC;
drop table TB_INVNC;
create table TB_INVNC  (
   INVNC_ID             INTEGER                         not null,  /*�ؿⵥID            */
   INVNC001             VARCHAR2(30)                    not null,  /*�ؿⵥ��            */
   INVNC002             INTEGER                         not null,  /*��Դ�����ͣ�0-�ֹ���1-�ջ���          */
   INVNC003             INTEGER                         not null,  /*��Դ��Ӫ����֯ID    */
   INVNC004             INTEGER ,                                  /*��Դ��ID            */
   INVNC005             INTEGER                         not null,  /*ǩ�յ�ID            */
   INVNC006             INTEGER                         not null,  /*�ػ��ֿ⣬Ĭ��Ϊ�����ֿ⣬���޸�            */
   INVNC007             INTEGER                         not null,  /*¼����ID            */
   INVNC008             DATE                            not null,  /*¼������            */
   INVNC009             INTEGER,  			           /*�����ID            */
   INVNC010             DATE,                                      /*�������            */
   INVNC011             VARCHAR2(1)                     not null,  /*���״̬            */
   INVNC012             VARCHAR2(255),                             /*��ע                */
   INVNC013             INTEGER                                    /*����ID              */
   INVNC014             VARCHAR2(30)                            ,  /*��Դ����            */--20111217 add by xiechun 
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_INVNC primary key (INVNC_ID)
);
create unique index AK_TB_INVNC on TB_INVNC (INVNC001);

create sequence SEQ_TB_INVNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNC to public;
grant index  on TB_INVNC to public;
grant update on TB_INVNC to public; 
grant delete on TB_INVNC to public;  
grant insert on TB_INVNC to public; 
grant select on SEQ_TB_INVNC to public;   
