/*
================================================================================
��ṹ����:TB_PUBIF
��ṹ����:���ر�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIF;
drop index AK_TB_PUBIF;
drop table TB_PUBIF;
create table TB_PUBIF  (
   PUBIF_ID             INTEGER                         not null,  /*����ID             */
   PUBIF001             INTEGER                         not null,  /*��˾ID             */
   PUBIF002             INTEGER                         not null,  /*Ӫ����֯ID         */
   PUBIF003             INTEGER                         not null,  /*¥��ID             */
   PUBIF004             INTEGER                         not null,  /*¥��ID             */
   PUBIF005             VARCHAR2(16)                    not null,  /*���ر��           */
   PUBIF006             VARCHAR2(30),                              /*��������           */
   PUBIF007             VARCHAR2(50),                              /*��ע               */
   PUBIF008             INTEGER,                                   /*¼����ID           */
   PUBIF009             DATE,                                      /*¼������           */
   PUBIF010             INTEGER,                                   /*�����ID           */
   PUBIF011             DATE,                                      /*�������           */
   PUBIF012             VARCHAR2(1)                     not null,  /*��ǰʹ�� 0.δʹ�� 1.ʹ�� 2.ͣ�� */
   PUBIF013             VARCHAR2(1)                     not null,  /*���״̬           */
   PUBIF014             VARCHAR2(1),                               /*�Ƿ������������   */  
   PUBIF015             VARCHAR2(30),                               /*��ҵ����   */  
   PUBIF016             VARCHAR2(30),                               /*��˾����   */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBIF primary key (PUBIF_ID)
);
create unique index AK_TB_PUBIF on TB_PUBIF (PUBIF002,PUBIF005);
create sequence SEQ_TB_PUBIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIF to public;
grant index  on TB_PUBIF to public;
grant update on TB_PUBIF to public; 
grant delete on TB_PUBIF to public;  
grant insert on TB_PUBIF to public; 
grant select on SEQ_TB_PUBIF to public;   