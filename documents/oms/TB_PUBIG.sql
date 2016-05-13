/*
================================================================================
��ṹ����:TB_PUBIG
��ṹ����:̯λ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIG;
drop index AK_TB_PUBIG;
drop table TB_PUBIG;
create table TB_PUBIG  (
   PUBIG_ID             INTEGER                         not null,  /*̯λID             */
   PUBIG001             INTEGER                         not null,  /*��˾ID             */
   PUBIG002             INTEGER                         not null,  /*Ӫ����֯ID         */
   PUBIG003             VARCHAR2(30)                    not null,  /*̯λ���           */
   PUBIG004             VARCHAR2(30),                              /*̯λ����           */  
   PUBIG005             VARCHAR2(50),                              /*��ע               */  
   PUBIG006             INTEGER,                                   /*¼����ID           */  
   PUBIG007             DATE,                                      /*¼������           */  
   PUBIG008             INTEGER,                                   /*�����ID           */  
   PUBIG009             DATE,                                      /*�������           */  
   PUBIG010             VARCHAR2(1)                     not null,  /*��ǰ����0.δ���� 1.Ԥ�� 2.���� 3.ͣ�� */
   PUBIG011             VARCHAR2(1)                     not null,  /*���״̬           */
   PUBIG012             INTEGER,                                   /*̯λ����ID         */  
   PUBIG013             INTEGER,                                   /*չλ����ID         */  add by ouwx 2011/10/24
   PUBIG015             VARCHAR2(30),                              /*��˾����           */  add by ouwx 2013/12/01
   PUBIG014             VARCHAR2(30),                              /*��ҵ����           */  add by ouwx 2013/12/01
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBIG primary key (PUBIG_ID)
);
create unique index AK_TB_PUBIG on TB_PUBIG (PUBIG002,PUBIG003);
create sequence SEQ_TB_PUBIG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIG to public;
grant index  on TB_PUBIG to public;
grant update on TB_PUBIG to public; 
grant delete on TB_PUBIG to public;  
grant insert on TB_PUBIG to public; 
grant select on SEQ_TB_PUBIG to public;   