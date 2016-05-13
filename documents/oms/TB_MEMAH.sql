/*
================================================================================
��ṹ����:TB_MEMAH
��ṹ����:��Ա��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAH;
drop index AK_TB_MEMAH;
drop table TB_MEMAH;
create table TB_MEMAH  (
   MEMAH_ID             INTEGER                         not null,  /*��ԱID             */
   MEMAH001             VARCHAR2(30)                    not null,  /*��Ա���           */
   MEMAH002             VARCHAR2(30)                    not null,  /*��Ա����           */
   MEMAH003             INTEGER                         not null,  /*֤������ID         */
   MEMAH004             VARCHAR2(30)                    not null,  /*֤������           */
   MEMAH005             DATE                            not null,  /*��������           */
   MEMAH006             VARCHAR2(1)                     not null,  /*�Ա�               */
   MEMAH007             VARCHAR2(1)                     not null,  /*����               */
   MEMAH008             INTEGER,                                   /*ѧ��ID             */
   MEMAH009             INTEGER,                                   /*ְҵID             */
   MEMAH010             INTEGER,                                   /*����Ǽ�ID         */
   MEMAH011             INTEGER,                                   /*��ȤID             */
   MEMAH012             VARCHAR2(10),                              /*��ͥ�ʱ�           */
   MEMAH013             VARCHAR2(255),                             /*��ͥ��ַ           */
   MEMAH014             VARCHAR2(60),                              /*��λ����           */
   MEMAH015             VARCHAR2(10),                              /*��λ�ʱ�           */
   MEMAH016             VARCHAR2(255),                             /*��λ��ַ           */
   MEMAH017             VARCHAR2(10),                              /*�ʼ��ʱ�           */
   MEMAH018             VARCHAR2(255),                             /*�ʼĵ�ַ           */
   MEMAH019             INTEGER                         not null,  /*����ID             */
   MEMAH020             INTEGER                         not null,  /*����ID             */
   MEMAH021             VARCHAR2(30),                              /*�绰               */
   MEMAH022             VARCHAR2(30),                              /*�ֻ�               */
   MEMAH023             VARCHAR2(60),                              /*�����ʼ�           */
   MEMAH024             INTEGER                         not null,  /*��Ա����ID         */
   MEMAH025             INTEGER,                                   /*��Ա�ȼ�ID         */ # modify ouwx ���� 
   MEMAH026             INTEGER                         not null,  /*������ԴID         */
   MEMAH027             INTEGER                         not null,  /*�Ǽ�Ӫ����֯ID     */
   MEMAH028             INTEGER                         not null,  /*�Ǽ���ID           */
   MEMAH029             DATE                            not null,  /*�Ǽ�����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAH primary key (MEMAH_ID)
);
create unique index AK_TB_MEMAH on TB_MEMAH (MEMAH001);
create sequence SEQ_TB_MEMAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAH to public;
grant index  on TB_MEMAH to public;
grant update on TB_MEMAH to public; 
grant delete on TB_MEMAH to public;  
grant insert on TB_MEMAH to public; 
grant select on SEQ_TB_MEMAH to public;   