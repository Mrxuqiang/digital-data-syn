/*
================================================================================
��ṹ����:TB_CONCH
��ṹ����:��ͬ����������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCH;
drop index AK_TB_CONCH;
drop table TB_CONCH;
create table TB_CONCH  (
   CONCH_ID             INTEGER                         not null,  /*��ͬ�����������ID  */
   CONCH001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCH002             INTEGER                         not null,  /*����ID              */
   CONCH003             NUMBER(12,2)                    not null,  /*���ý��            */
   CONCH004             DATE                            not null,  /*��׼����            */
   CONCH005             DATE                                    ,  /*��ʼ����            */
   CONCH006             DATE                                    ,  /*��ֹ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CONCH primary key (CONCH_ID)
);
create unique index AK_TB_CONCH on TB_CONCH (CONCH001,CONCH002,CONCH004);
create sequence SEQ_TB_CONCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCH to public;
grant index  on TB_CONCH to public;
grant update on TB_CONCH to public; 
grant delete on TB_CONCH to public;  
grant insert on TB_CONCH to public; 
grant select on SEQ_TB_CONCH to public;   