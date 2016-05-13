/*
================================================================================
��ṹ����:TB_CONLB
��ṹ����:�������ģ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONLB;
drop index AK_TB_CONLB;
drop table TB_CONLB;
create table TB_CONLB  (
   CONLB_ID             INTEGER                         not null,  /*����ID              */
   CONLB001             INTEGER                         not null,  /*����ģ��ID          */
   CONLB002             VARCHAR2(1)                     not null,  /*��������0:���̽׶� 1:���̲��� */
   CONLB003             VARCHAR2(10)                    not null,  /*���̴���            */
   CONLB004             VARCHAR2(30)                    not null,  /*��������            */
   CONLB005             NUMBER(2)                       not null,  /*���                */
   CONLB006             NUMBER(12,2)                    not null,  /*��ɰٷֱ�(%)       */
   CONLB007             VARCHAR2(1),                               /*����������          */
   CONLB008             VARCHAR2(1)                     not null,  /*�ⷢ��ʽ            */
   CONLB009             NUMBER(12,2),                              /*�Զ��������(����)  */
   CONLB010             VARCHAR2(1),                               /*�Ƿ�ĩ��            */
   CONLB011             NUMBER(1),                                 /*�㼶                */
   CONLB012             VARCHAR2(40),                              /*��������            */
   CONLB013             VARCHAR2(1)                     not null,  /*����ѡ�� 1.�� 2.������� 3.��Ӧ�̱�� 4.��Ӧ��Ͷ�� Def 1           */
   CONLB014             INTEGER,                                   /*�������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONLB primary key (CONLB_ID)
);
create unique index AK_TB_CONLB on TB_CONLB (CONLB001,CONLB002,CONLB003);
create sequence SEQ_TB_CONLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONLB to public;
grant index  on TB_CONLB to public;
grant update on TB_CONLB to public; 
grant delete on TB_CONLB to public;  
grant insert on TB_CONLB to public; 
grant select on SEQ_TB_CONLB to public;   



