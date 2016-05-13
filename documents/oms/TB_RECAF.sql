/*
================================================================================
��ṹ����:TB_RECAF
��ṹ����:�տ���ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_RECAF;
drop index AK_TB_RECAF;
drop table TB_RECAF;
create table TB_RECAF  (
   RECAF_ID             INTEGER                         not null,  /*�տ���ϸ��ID       */
   RECAF001             INTEGER                         not null,  /*�տ����ID         */
   RECAF002             VARCHAR2(1)                     not null,  /*�տʽ           */
   RECAF003             INTEGER                         not null,  /*�ֽ������춯��ID         */
   RECAF004             INTEGER,                                   /*��ƿ�ĿID           */
   RECAF005             VARCHAR2(30),                              /*Ԥ���ֶ�           */
   RECAF006             NUMBER(5,4),                               /*Ԥ���ֶ�       */   
   RECAF007             VARCHAR2(30),                              /*ˢ������           */
   RECAF008             NUMBER(16,2),                              /*ԭ���տ���       */
   RECAF009             NUMBER(16,2),                              /*�����տ���       */
   RECAF010             INTEGER,                                   /*��������           */
   RECAF011             NUMBER(16,2),                               /*������           */
   RECAF012             INTEGER,                                   /*�����˺�           */
   RECAF013             VARCHAR2(255),                              /*��ע               */
   RECAF014             NUMBER(16,2),                              /*ԭ���Ѻ������       */
   RECAF015             NUMBER(16,2),                              /*�����Ѻ������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_RECAF primary key (RECAF_ID)
);
create unique index AK_TB_RECAF on TB_RECAF (RECAF_ID,RECAF001);
create sequence SEQ_TB_RECAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAF to public;
grant index  on TB_RECAF to public;
grant update on TB_RECAF to public; 
grant delete on TB_RECAF to public;  
grant insert on TB_RECAF to public; 
grant select on SEQ_TB_RECAF to public;   