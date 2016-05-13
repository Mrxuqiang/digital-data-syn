\/*
================================================================================
��ṹ����:TB_CONBH
��ṹ����:��ͬ�����Թ̶��ѱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBH;
drop index AK_TB_CONBH;
drop table TB_CONBH;
create table TB_CONBH  (
   CONBH_ID             INTEGER                         not null,  /*��ͬ�����Թ̶���ID  */
   CONBH001             INTEGER                         not null,  /*��ͬID              */
   CONBH002             INTEGER                         not null,  /*����ID              */
   CONBH003             INTEGER                         not null,  /*��ʽID              */
   CONBH004             VARCHAR2(1)                     not null,  /*�׸�չ�� 1.��Ȼ�� 2.չ�ʵ� 3.���� 4.���� */ 
   CONBH005             VARCHAR2(1)                     not null,  /*��׼����            */
   CONBH006             VARCHAR2(1)                     not null,  /*����չ�� 1.��Ȼ�� 2.չ�ʵ� 3.���� 4.���� ��/
   CONBH007             VARCHAR2(1),                               /*Ȩ������1.Ȩ������ 2.�ո�ʵ���� */
   CONBH008             NUMBER(22,2),                              /*�������            */ 
   CONBH009             NUMBER(22,2),                              /*�ڼ�ÿ�����        */ 
   CONBH010             NUMBER(22,2),                              /*ĩ�����            */ 
   CONBH011             INTEGER                         not null,  /*�׸���ʽ            */
   CONBH012             INTEGER                         not null,  /*���ⷽʽ            */
   CONBH013             NUMBER(22,2),                              /*���õ���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */   
   constraint PK_TB_CONBH primary key (CONBH_ID)
);
create unique index AK_TB_CONBH on TB_CONBH (CONBH001,CONBH002);
create sequence SEQ_TB_CONBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBH to public;
grant index  on TB_CONBH to public;
grant update on TB_CONBH to public; 
grant delete on TB_CONBH to public;  
grant insert on TB_CONBH to public; 
grant select on SEQ_TB_CONBH to public;   