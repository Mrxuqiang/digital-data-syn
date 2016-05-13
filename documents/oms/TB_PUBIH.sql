/*
================================================================================
��ṹ����:TB_PUBIH
��ṹ����:���λ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIH;
drop index AK_TB_PUBIH;
drop table TB_PUBIH;
create table TB_PUBIH  (
   PUBIH_ID             INTEGER                         not null,  /*���λID             */
   PUBIH001             VARCHAR2(16)                    not null,  /*���λ���           */
   PUBIH002             VARCHAR2(30),                              /*���λ����           */  
   PUBIH003             VARCHAR2(60),                              /*���λλ��           */  
   PUBIH004             INTEGER                         not null,  /*Ӫ����֯ID           */
   PUBIH005             INTEGER,                                   /*¥��ID               */  
   PUBIH006             INTEGER,                                   /*¥��ID               */  
   PUBIH007             VARCHAR2(60),                              /*��λ                 */  
   PUBIH008             VARCHAR2(60),                              /*�ص�����             */  
   PUBIH009             NUMBER(12,2),                              /*���(M2)             */  
   PUBIH010             VARCHAR2(60),                              /*����                 */  
   PUBIH011             NUMBER(12,2),                              /*��(M)                */  
   PUBIH012             NUMBER(12,2),                              /*��(M)                */  
   PUBIH013             VARCHAR2(1)                     not null,  /*ʹ�����             */
   PUBIH014             VARCHAR2(60),                              /*��עһ               */  
   PUBIH015             VARCHAR2(60),                              /*��ע��               */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBIH primary key (PUBIH_ID)
);
create unique index AK_TB_PUBIH on TB_PUBIH (PUBIH001);
create sequence SEQ_TB_PUBIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIH to public;
grant index  on TB_PUBIH to public;
grant update on TB_PUBIH to public; 
grant delete on TB_PUBIH to public;  
grant insert on TB_PUBIH to public; 
grant select on SEQ_TB_PUBIH to public;   