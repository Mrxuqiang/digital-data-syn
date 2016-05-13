/*
================================================================================
��ṹ����:TB_CCMBU
��ṹ����:��������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBU;
drop index AK_TB_CCMBU;
drop table TB_CCMBU;
create table TB_CCMBU  (
   CCMBU_ID             INTEGER                         not null,  /*��������ϸID        */
   CCMBU001             INTEGER                         not null,  /*����ID              */
   CCMBU002             NUMBER(30)                      not null,  /*����                */
   CCMBU003             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMBU004             DATE                            not null,  /*����ʱ��:������ʱ�� */
   CCMBU005             VARCHAR2(1)                     not null,  /*��Դ����1.���۶��� 2.���� 3.�������� 4.���� 5.��ֵ 6.��ֵ  7.������*/
   CCMBU006             INTEGER                         not null,  /*��Դ����ID          */
   CCMBU007             VARCHAR2(30)                    not null,  /*��Դ����            */
   CCMBU008             VARCHAR2(20)                    not null,  /*���׹���1.��Ա�� 2.�ۿ� 3����  4���ѿ� 5����ȯ��           */
   CCMBU009             NUMBER(12,2),                              /*���׽��            */
   CCMBU010             NUMBER(12,2),                              /*���ܽ��            */
   CCMBU011             NUMBER(12,0),                              /*��������            */
   CCMBU012             NUMBER(12,2),                              /*�����ѽ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBU primary key (CCMBU_ID)
);
create unique index AK_TB_CCMBU on TB_CCMBU (CCMBU001,CCMBU002,CCMBU003,CCMBU005,CCMBU006);
create sequence SEQ_TB_CCMBU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBU to public;
grant index  on TB_CCMBU to public;
grant update on TB_CCMBU to public; 
grant delete on TB_CCMBU to public;  
grant insert on TB_CCMBU to public; 
grant select on SEQ_TB_CCMBU to public;   