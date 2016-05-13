/*
================================================================================
��ṹ����:TB_CCMBT
��ṹ����:��״����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBT;
drop index AK_TB_CCMBT;
drop table TB_CCMBT;
create table TB_CCMBT  (
   CCMBT_ID             INTEGER                         not null,  /*����ȯ����ϸID      */
   CCMBT001             INTEGER                         not null,  /*��ID                */
   CCMBT002             NUMBER(30)                      not null,  /*����                */
   CCMBT003             INTEGER                         not null,  /*ȯ��ID              */
   CCMBT004             DATE                            not null,  /*ȯ��Ч����          */
   CCMBT005             DATE                            not null,  /*ȯ��Чֹ��          */
   CCMBT006             NUMBER(12,2)                    not null,  /*ȯ���              */
   CCMBT007             NUMBER(12,2)                    not null,  /*ȯ���˽��          */
   CCMBT008             NUMBER(12,2)                    not null,  /*ȯ���ѽ��          */
   CCMBT009             NUMBER(12,2)                    not null,  /*ȯ��ȯ���          */
   CCMBT010             NUMBER(12,2)                    not null,  /*ȯ���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBT primary key (CCMBT_ID)
);
create unique index AK_TB_CCMBT on TB_CCMBT (CCMBT002,CCMBT003);
create sequence SEQ_TB_CCMBT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBT to public;
grant index  on TB_CCMBT to public;
grant update on TB_CCMBT to public; 
grant delete on TB_CCMBT to public;  
grant insert on TB_CCMBT to public; 
grant select on SEQ_TB_CCMBT to public;   