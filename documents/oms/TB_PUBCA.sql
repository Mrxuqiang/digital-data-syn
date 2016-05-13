/*
================================================================================
��ṹ����:TB_PUBCA
��ṹ����:��˾��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBCA;
drop index AK_TB_PUBCA;
drop table TB_PUBCA;
create table TB_PUBCA  (
   PUBCA_ID             INTEGER                         not null,  /*��˾ID             */
   PUBCA001             VARCHAR2(16)                    not null,  /*��˾����           */
   PUBCA002             VARCHAR2(20)                    not null,  /*��˾���           */
   PUBCA003             VARCHAR2(80)                    not null,  /*��˾����ȫ��       */
   PUBCA004             VARCHAR2(80)                    not null,  /*��˾����ȫ��       */
   PUBCA005             INTEGER,                                   /*�ϼ���˾ID         */
   PUBCA006             VARCHAR2(255),                             /*��˾LOGO           */ 
   PUBCA007             VARCHAR2(1)                     not null,  /*Ӫ��״��           */
   PUBCA008             DATE                            not null,  /*��ҵ����           */
   PUBCA009             DATE,                                      /*ͣ������           */ 
   PUBCA010             INTEGER                         not null,  /*����ID             */
   PUBCA011             INTEGER                         not null,  /*����ID             */
   PUBCA012             INTEGER                         not null,  /*����ID             */
   PUBCA013             INTEGER                         not null,  /*ʡ��ID             */
   PUBCA014             INTEGER                         not null,  /*����ID             */
   PUBCA015             INTEGER,                                   /*����ID             */
   PUBCA016             VARCHAR2(10),                              /*��������           */ 
   PUBCA017             VARCHAR2(255),                             /*��˾��ַ           */
   PUBCA018             INTEGER                         not null,  /*����ID             */
   PUBCA019             INTEGER                         not null,  /*�ұ�ID             */
   PUBCA020             VARCHAR2(10),                              /*�ʼ��ʱ�           */
   PUBCA021             VARCHAR2(255),                             /*�ʼĵ�ַ           */   
   PUBCA022             VARCHAR2(60),                              /*�ʼ�����           */
   PUBCA023             VARCHAR2(30),                              /*�绰               */
   PUBCA024             VARCHAR2(30),                              /*����               */
   PUBCA025             VARCHAR2(30),                              /*�ƶ��绰           */  
   PUBCA026             VARCHAR2(60),                              /*E_Mail             */
   PUBCA027             VARCHAR2(60),                              /*��˾��ַ           */
   PUBCA028             VARCHAR2(20),                              /*˰��               */ 
   PUBCA029             VARCHAR2(20),                              /*˰������           */
   PUBCA030             VARCHAR2(10)                    not null,  /*���ݿ����         */
   PUBCA031             VARCHAR2(30),                              /*��ǰ�㼶����       */
   ISLASTLEV            VARCHAR2(1),                               /*�Ƿ�ĩ��           */
   LEVNUM               NUMBER(1),                                 /*�㼶               */
   PARCODE              VARCHAR2(40),                              /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBCA primary key (PUBCA_ID)
);
create unique index AK_TB_PUBCA on TB_PUBCA (PUBCA001);
create sequence SEQ_TB_PUBCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCA to public;
grant index  on TB_PUBCA to public;
grant update on TB_PUBCA to public; 
grant delete on TB_PUBCA to public;  
grant insert on TB_PUBCA to public; 
grant select on SEQ_TB_PUBCA to public;   