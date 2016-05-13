/*
================================================================================
��ṹ����:TB_CONCD
��ṹ����:��ͬ��������Թ̶����ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCD;
drop index AK_TB_CONCD;
drop table TB_CONCD;
create table TB_CONCD  (
   CONCD_ID             INTEGER                         not null,  /*��ͬ��������Թ̶�����ID*/
   CONCD001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCD002             INTEGER                         not null,  /*����ID              */
   CONCD003             INTEGER                         not null,  /*��ʽ����ID          */
   CONCD004             VARCHAR2(1)                     not null,  /*�׸�չ�� 1.��Ȼ�� 2.չ�ʵ� 3.���� 4.���� */ 
   CONCD005             VARCHAR2(1)                     not null,  /*��׼����            */
   CONCD006             VARCHAR2(1)                     not null,  /*����չ�� 1.��Ȼ�� 2.չ�ʵ� 3.���� 4.���� ��/
   CONCD007             VARCHAR2(1),                               /*Ȩ������1.Ȩ������ 2.�ո�ʵ���� */
   CONCD008             NUMBER(22,2),                              /*�������            */ 
   CONCD009             NUMBER(22,2),                              /*�ڼ�ÿ�����        */ 
   CONCD010             NUMBER(22,2),                              /*ĩ�����            */ 
   CONCD011             INTEGER                         not null,  /*�׸���ʽ            */
   CONCD012             INTEGER                         not null,  /*���ⷽʽ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */                    
   constraint PK_TB_CONCD primary key (CONCD_ID)
);
create unique index AK_TB_CONCD on TB_CONCD (CONCD001,CONCD002);
create sequence SEQ_TB_CONCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCD to public;
grant index  on TB_CONCD to public;
grant update on TB_CONCD to public; 
grant delete on TB_CONCD to public;  
grant insert on TB_CONCD to public; 
grant select on SEQ_TB_CONCD to public;   