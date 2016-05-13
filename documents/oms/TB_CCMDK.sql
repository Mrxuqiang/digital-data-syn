/*
================================================================================
��ṹ����:TB_CCMDK
��ṹ����:ȯ���˵��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDK;
drop index AK_TB_CCMDK;
drop table TB_CCMDK;
create table TB_CCMDK  (
   CCMDK_ID             INTEGER                         not null,  /*ȯ���˵���ϸID      */
   CCMDK001             INTEGER                         not null,  /*ȯ���˵�ID          */
   CCMDK002             INTEGER                         not null,  /*ȯ��ID              */
   CCMDK003             INTEGER                         not null,  /*ȯ���ID            */
   CCMDK004             NUMBER(12,2)                    not null,  /*ȯ�����          */
   CCMDK005             NUMBER(30)                      not null,  /*��ʼȯ��            */
   CCMDK006             NUMBER(30)                      not null,  /*����ȯ��            */
   CCMDK007             NUMBER(12)                      not null,  /*����                */
   CCMDK008             NUMBER(12,2)                    not null,  /*ȯ���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDK primary key (CCMDK_ID)
);
create unique index AK_TB_CCMDK on TB_CCMDK (CCMDK001,CCMDK002,CCMDK003,CCMDK005);
create sequence SEQ_TB_CCMDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDK to public;
grant index  on TB_CCMDK to public;
grant update on TB_CCMDK to public; 
grant delete on TB_CCMDK to public;  
grant insert on TB_CCMDK to public; 
grant select on SEQ_TB_CCMDK to public;   