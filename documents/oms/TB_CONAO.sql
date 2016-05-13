/*
================================================================================
��ṹ����:TB_CONAO
��ṹ����:��ͬԤ���Żݶ�ȱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAO;
drop index AK_TB_CONAO;
drop table TB_CONAO;
create table TB_CONAO  (
   CONAO_ID             INTEGER                         not null,  /*��ͬԤ���Żݶ�ID    */
   CONAO001             VARCHAR2(30)                    not null,  /*SAP��˾����         */
   CONAO002             VARCHAR2(30)                    not null,  /*SAP��ҵʵ��         */
   CONAO003             VARCHAR2(30)                    not null,  /*SAP¥�����         */
   CONAO004             VARCHAR2(30)                    not null,  /*SAP¥��ȼ�         */
   CONAO005             DATE                            not null,  /*��ʼ����            */
   CONAO006             DATE                            not null,  /*��������            */
   CONAO007             NUMBER(12,4)                    not null,  /*�Żݶ��            */
   CONAO008             VARCHAR2(255),                             /*��ע                */
   CONAO009             INTEGER,                                   /*¼����              */
   CONAO010             DATE,                                      /*¼������            */
   CONAO011             INTEGER,                                   /*�޸���              */
   CONAO012             DATE,                                      /*�޸�����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONAO primary key (CONAO_ID)
);
create unique index AK_TB_CONAO on TB_CONAO (CONAO001,CONAO002,CONAO003,CONAO004,CONAO005);
create sequence SEQ_TB_CONAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAO to public;
grant index  on TB_CONAO to public;
grant update on TB_CONAO to public; 
grant delete on TB_CONAO to public;  
grant insert on TB_CONAO to public; 
grant select on SEQ_TB_CONAO to public;   