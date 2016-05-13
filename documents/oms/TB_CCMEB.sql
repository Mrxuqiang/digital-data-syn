/*
================================================================================
��ṹ����:TB_CCMEB
��ṹ����:����ȯ����ȯ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMEB;
drop index AK_TB_CCMEB;
drop table TB_CCMEB;
create table TB_CCMEB  (
   CCMEB_ID             INTEGER                         not null,  /*����ȯ����ȯ����ϸID*/
   CCMEB001             INTEGER                         not null,  /*����ȯ����ȯ��ID    */
   CCMEB002             INTEGER                         not null,  /*ȯ��ID              */
   CCMEB003             DATE                            not null,  /*��Ч����            */
   CCMEB004             DATE                            not null,  /*��Чֹ��            */
   CCMEB005             NUMBER(12,2)                    not null,  /*ȯ���              */
   CCMEB006             INTEGER                         not null,  /*����ȯ��ID          */
   CCMEB007             DATE                            not null,  /*����ȯ��Ч����      */
   CCMEB008             DATE                            not null,  /*����ȯ��Чֹ��      */
   CCMEB009             NUMBER(12,2)                    not null,  /*����ȯ���          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMEB primary key (CCMEB_ID)
);
create unique index AK_TB_CCMEB on TB_CCMEB (CCMEB001,CCMEB002);
create sequence SEQ_TB_CCMEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMEB to public;
grant index  on TB_CCMEB to public;
grant update on TB_CCMEB to public; 
grant delete on TB_CCMEB to public;  
grant insert on TB_CCMEB to public; 
grant select on SEQ_TB_CCMEB to public;   