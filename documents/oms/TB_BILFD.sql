/*
================================================================================
��ṹ����:TB_BILFD
��ṹ����:�������÷�̯����̯��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILFD;
drop index AK_TB_BILFD;
drop table TB_BILFD;
create table TB_BILFD  (
   BILFD_ID             INTEGER                         not null,  /*�������÷�̯����̯��ϸID   */
   BILFD001             INTEGER                         not null,  /*�������÷�̯��ID           */
   BILFD002             VARCHAR2(1)                     not null,  /*��̯����1.�ۿ�2.��ȯ3.���� */
   BILFD003             INTEGER                         not null,  /*������ID                   */
   BILFD004             INTEGER                         not null,  /*̯λID                     */
   BILFD005             INTEGER                         not null,  /*�̻�ID                     */
   BILFD006             NUMBER(12,2),                              /*�������                   */ 
   BILFD007             NUMBER(12,2),                              /*���۾���                   */ 
   BILFD008             NUMBER(12,2),                              /*�����                   */ 
   BILFD009             NUMBER(12,2),                              /*������̯���               */ 
   BILFD010             NUMBER(12,2),                              /*����������               */ 
   BILFD011             NUMBER(12,2),                              /*���۾��������           */ 
   BILFD012             NUMBER(12,2),                              /*����������           */ 
   BILFD013             NUMBER(12,2),                              /*������̯������(��˾�е�) */ 
   BILFD014             NUMBER(12,2),                              /*������̯������(�̼ҳе�) */
   BILFD015             NUMBER(5),                                 /*�������                   */ 
   BILFD016             VARCHAR2(2)                     not null,  /*��������                   */   
   BILFD017             VARCHAR2(30)                               /*��������                   */
   BILFD018             INTEGER,                                   /*��ͬ��ID                   */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����               */                               
   CREATE_DATE          DATE,                                      /*��������                   */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                   */
   MODI_DATE            DATE,                                      /*�޸�����                   */
   FLAG                 NUMBER(1),                                 /*����״̬                   */
   constraint PK_TB_BILFD primary key (BILFD_ID)
);
create unique index AK_TB_BILFD on TB_BILFD (BILFD001,BILFD002,BILFD003,BILFD004,BILFD005);
create sequence SEQ_TB_BILFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFD to public;
grant index  on TB_BILFD to public;
grant update on TB_BILFD to public; 
grant delete on TB_BILFD to public;  
grant insert on TB_BILFD to public; 
grant select on SEQ_TB_BILFD to public;   