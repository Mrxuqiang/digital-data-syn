/*
================================================================================
��ṹ����:TB_PRODB
��ṹ����:װ�����뵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODB;
drop index AK_TB_PRODB;
drop table TB_PRODB;
create table TB_PRODB  (
   PRODB_ID             INTEGER                         not null,  /*װ�����뵥ID	 */
   PRODB001             INTEGER                         not null,  /*����		 */
   PRODB002             VARCHAR2(30)                    not null,  /*���뵥��		 */
   PRODB003             DATE                            not null,  /*��������		 */
   PRODB004             INTEGER                         not null,  /*Ӫ����֯ID		 */
   PRODB005             INTEGER                         not null,  /*���벿��ID		 */
   PRODB006             INTEGER                         not null,  /*������ԱID		 */
   PRODB007             INTEGER                         not null,  /*�����̻�ID		 */
   PRODB008             INTEGER                         not null,  /*����̯λID		 */
   PRODB009             VARCHAR2(100),                             /*ʩ����λ		 */
   PRODB010             VARCHAR2(40),                              /*Ӫҵִ��		 */
   PRODB011             VARCHAR2(30),                              /*ί����		 */
   PRODB012             VARCHAR2(30),                              /*ί���˵绰		 */
   PRODB013             VARCHAR2(30),                              /*������	  	 */
   PRODB014             VARCHAR2(30),                              /*�����˵绰		 */
   PRODB015             DATE                            not null,  /*װ�޿�ʼ����	 */
   PRODB016             DATE                            not null,  /*װ�޽�������	 */
   PRODB017             NUMBER(5,0),                               /*ʩ������		 */
   PRODB018             VARCHAR2(30),                              /*ʩ�����֤          */
   PRODB019             INTEGER,                                   /*¼����ID            */
   PRODB020             DATE,                                      /*¼������            */
   PRODB021             INTEGER,                                   /*�����ID            */
   PRODB022             DATE,                                      /*�������            */
   PRODB023             VARCHAR2(1)                     not null,  /*���״̬            */
   PRODB024             VARCHAR2(1),                               /*����״̬            */
   PRODB025             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   PRODB026             VARCHAR2(30),                              /*ǩ�˵���            */
   PRODB027             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODB primary key (PRODB_ID)
);
create unique index AK_TB_PRODB on TB_PRODB (PRODB002,PRODB004);
create sequence SEQ_TB_PRODB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODB to public;
grant index  on TB_PRODB to public;
grant update on TB_PRODB to public; 
grant delete on TB_PRODB to public;  
grant insert on TB_PRODB to public; 
grant select on SEQ_TB_PRODB to public;   
