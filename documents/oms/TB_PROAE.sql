/*
================================================================================
��ṹ����:TB_PROAE
��ṹ����:��ѵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROAE;
drop index AK_TB_PROAE;
drop table TB_PROAE;
create table TB_PROAE  (
   PROAE_ID             INTEGER                         not null,  /*��ѵ�ID             */
   PROAE001             INTEGER                         not null,  /*����ID               */
   PROAE002             VARCHAR2(30)                    not null,  /*��ѵ���             */
   PROAE003             DATE                            not null,  /*��������             */
   PROAE004             INTEGER                         not null,  /*��˾ID               */
   PROAE005             INTEGER                         not null,  /*Ӫ����֯ID           */
   PROAE006             INTEGER                         not null,  /*���ID               */
   PROAE007             VARCHAR2(1)                     not null,  /*�ɷ�����             */
   PROAE008             INTEGER                         not null,  /*�̻�ID               */
   PROAE009             INTEGER,                                   /*̯λID               */
   PROAE010             INTEGER,                                   /*��ͬID               */
   PROAE011             INTEGER                         not null,  /*����ID               */
   PROAE012             INTEGER,                                   /*���õ�ID             */
   PROAE013             INTEGER                         not null,  /*ҵ����ID           */
   PROAE014             INTEGER                         not null,  /*ҵ����ԱID           */
   PROAE015             VARCHAR2(255),                             /*��ע                 */
   PROAE016             DATE,                                      /*�������             */
   PROAE017             DATE,                                      /*���ֹ��             */
   PROAE018             NUMBER(12,2),                              /*���µ���             */
   PROAE019             NUMBER(12,2),                              /*���³���             */
   PROAE020             NUMBER(12,2),                              /*����                 */
   PROAE021             NUMBER(12,2),                              /*���                 */
   PROAE022             NUMBER(12,2)                    not null,  /*���                 */
   PROAE023             INTEGER,                                   /*¼����ID             */
   PROAE024             DATE,                                      /*¼������             */
   PROAE025             INTEGER,                                   /*���ID               */
   PROAE026             DATE,                                      /*�������             */
   PROAE027             VARCHAR2(1)                     not null,  /*���״̬             */
   PROAE028             VARCHAR2(1),                               /*�Ƿ�ǩ��             */
   PROAE029             VARCHAR2(30),                              /*ǩ�˵���             */
   PROAE030             VARCHAR2(1),                               /*ǩ����               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PROAE primary key (PROAE_ID)
);
create unique index AK_TB_PROAE on TB_PROAE (PROAE002,PROAE005);
create sequence SEQ_TB_PROAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAE to public;
grant index  on TB_PROAE to public;
grant update on TB_PROAE to public; 
grant delete on TB_PROAE to public;  
grant insert on TB_PROAE to public; 
grant select on SEQ_TB_PROAE to public;   