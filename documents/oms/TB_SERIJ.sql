/*
================================================================================
��ṹ����:TB_SERIJ
��ṹ����:ͬ�Ǳȼۼƻ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIJ;
drop index AK_TB_SERIJ;
drop table TB_SERIJ;
create table TB_SERIJ  (
   SERIJ_ID             INTEGER                         not null,  /*�ȼۼƻ���ID       */
   SERIJ001             INTEGER                         not null,  /*����               */
   SERIJ002             VARCHAR2(30),                              /*����               */
   SERIJ003             DATE,                                      /*�ƻ�����           */
   SERIJ004             DATE,                                      /*�ƻ���ʼ����       */   
   SERIJ005             DATE,                                      /*�ƻ���������       */
   SERIJ006             INTEGER,                                   /*�ƻ��ƶ���         */
   SERIJ007             INTEGER,                                   /*�̳�               */
   SERIJ008             VARCHAR2(255),                             /*��ע               */
   SERIJ009             INTEGER,                                   /*¼����             */
   SERIJ010             DATE,                                      /*¼������           */
   SERIJ011             VARCHAR2(1),                               /*����״̬           */
   SERIJ012             INTEGER,                                   /*�����             */
   SERIJ013             DATE,                                      /*�������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_SERIJ primary key (SERIJ_ID)
);
create unique index AK_TB_SERIJ on TB_SERIJ (SERIJ001,SERIJ002,FLAG);
create sequence SEQ_TB_SERIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIJ to public;
grant index  on TB_SERIJ to public;
grant update on TB_SERIJ to public; 
grant delete on TB_SERIJ to public;  
grant insert on TB_SERIJ to public; 
grant select on SEQ_TB_SERIJ to public;   