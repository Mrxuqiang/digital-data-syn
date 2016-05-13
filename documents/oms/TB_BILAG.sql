/*
================================================================================
��ṹ����:TB_BILAG
��ṹ����:�����˿
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_BILAG;
drop index AK_TB_BILAG;
drop table TB_BILAG;
create table TB_BILAG  (
   BILAG_ID             INTEGER                         not null,  /*�˿��ID          */
   BILAG001             INTEGER                         not null,  /*����ID               */
   BILAG002             VARCHAR2(30)                    not null,  /*����                 */
   BILAG003             DATE                            not null,  /*�˿�����             */
   BILAG004             INTEGER                         not null,  /*�̻�ID               */
   BILAG005             INTEGER,                                   /*չλID               */  
   BILAG006             INTEGER,                                   /*��ͬID               */
   BILAG007             INTEGER,                                   /*Ӫ����֯ID           */        
   BILAG008             VARCHAR2(1)                     not null,  /*�˿ʽ             */
   BILAG009             NUMBER(22,2),                              /*�˿���             */         
   BILAG010             VARCHAR2(255),                             /*��ע                 */  
   BILAG011             INTEGER,                                   /*¼����               */
   BILAG012             DATE,                                      /*¼������             */
   BILAG013             VARCHAR2(1),                               /*����״̬             */
   BILAG014             INTEGER,                                   /*�����               */
   BILAG015             DATE,                                      /*�������             */ 
   BILAG016             VARCHAR2(1),                               /*�˿�����             */
   BILAG017             VARCHAR2(30),                              /*��������             */
   BILAG018             VARCHAR2(20),                              /*�����˻�����         */
   BILAG019             VARCHAR2(30),                              /*����������           */                          
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER,                                    /*����״̬             */
   constraint PK_TB_BILAG primary key (BILAG_ID)
);
create unique index AK_TB_BILAG on TB_BILAG (BILAG001,BILAG002,FLAG);
create sequence SEQ_TB_BILAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAG to public;
grant index  on TB_BILAG to public;
grant update on TB_BILAG to public; 
grant delete on TB_BILAG to public;  
grant insert on TB_BILAG to public; 
grant select on SEQ_TB_BILAG to public;   