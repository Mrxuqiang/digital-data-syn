/*
================================================================================
��ṹ����:TB_PURCC
��ṹ����:Ҫ��������Ʒ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURCC;
drop index AK_TB_PURCC;
drop table TB_PURCC;
create table TB_PURCC  (
   PURCC_ID             INTEGER                         not null,  /*Ҫ��������Ʒ����ID  */
   PURCC001             INTEGER                         not null,  /*Ҫ�����ܵ�ID        */
   PURCC002             INTEGER                         not null,  /*Ҫ��������Ʒͳ��ID  */
   PURCC003             INTEGER                         not null,  /*Ҫ��Ӫ����֯ID      */
   PURCC004             INTEGER                         not null,  /*Ҫ����ID            */
   PURCC005             DATE,                                      /*Ҫ������            */
   PURCC006             INTEGER                         not null,  /*Ҫ������ƷID        */
   PURCC007             INTEGER,                                   /*Ҫ������ϸID          */
   PURCC008             INTEGER                         not null,  /*��ƷID              */
   PURCC009             INTEGER                         not null,  /*Ҫ����λID          */
   PURCC010             NUMBER(12,2)                    not null,  /*��λ������          */
   PURCC011             INTEGER                         not null,  /*��Ӧ��ID            */
   PURCC012             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ            */
   PURCC013             VARCHAR2(1)                     not null,  /*���䷽ʽ            */
   PURCC014             INTEGER,                                   /*ά��1ID             */
   PURCC015             INTEGER,                                   /*ά��2ID             */
   PURCC016             INTEGER,                                   /*ά��3ID             */
   PURCC017             INTEGER,                                   /*ά��4ID             */
   PURCC018             INTEGER,                                   /*ά��5ID             */
   PURCC019             DATE,                                      /*��������            */
   PURCC020             NUMBER(18,3),                              /*Ҫ����              */
   PURCC021             INTEGER,                              /*������֯ID          */
   PURCC022             NUMBER(18,3),                              /*������              */
   PURCC023             NUMBER(18,3),                              /*������              */
   PURCC024             INTEGER                         not null,  /*�ɹ���λID          */
   PURCC025             NUMBER(12,2)                    not null,  /*��λ������          */
   PURCC026             NUMBER(18,3),                              /*�ɹ���              */
   PURCC027             NUMBER(18,3),                              /*δ������            */
   PURCC028             VARCHAR2(1),                               /*�᰸��              */
   PURCC029            VARCHAR2(1),					/*��Դ����*/  -- add by hansf  1 Ҫ���� 2 ���۶��� 3 ���뵥
   PURCC030         VARCHAR2(1),					/*��Ʒ��������*/  -- add by hansf  
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PURCC primary key (PURCC_ID)
);
create unique index AK_TB_PURCC on TB_PURCC (PURCC001,PURCC002,PURCC004,PURCC006);
create sequence SEQ_TB_PURCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURCC to public;
grant index  on TB_PURCC to public;
grant update on TB_PURCC to public; 
grant delete on TB_PURCC to public;  
grant insert on TB_PURCC to public; 
grant select on SEQ_TB_PURCC to public;   


select  sum(PURCC023) as DTBAB017
from tb_purcc 
group by PURCC003,PURCC004,PURCC012