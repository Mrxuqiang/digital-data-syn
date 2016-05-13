/*
================================================================================
��ṹ����:TB_CONIC
��ṹ����:���λ��ͬ��ֹ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONIC;
drop index AK_TB_CONIC;
drop table TB_CONIC;
create table TB_CONIC  (
   CONIC_ID             INTEGER                         not null,  /*���λ��ͬID      */
   CONIC001             VARCHAR2(30)                    not null,  /*���λ��ͬ��      */
   CONIC002             NUMBER(5,0)                     not null,  /*�汾��            */
   CONIC003             INTEGER                         not null,  /*���λID          */
   CONIC004             DATE                            not null,  /*ǩ������          */
   CONIC005             INTEGER                         not null,  /*����ID            */
   CONIC006             INTEGER,                                   /*¥��ID            */
   CONIC007             INTEGER,                                   /*¥��ID            */
   CONIC008             NUMBER(12,2),                              /*��(m)             */
   CONIC009             NUMBER(12,2),                              /*��(m)             */
   CONIC010             NUMBER(12,2),                              /*���(m2)          */
   CONIC011             DATE                            not null,  /*��������          */
   CONIC012             DATE                            not null,  /*����ֹ��          */
   CONIC013             NUMBER(12,2),                              /*��ͬ���          */
   CONIC014             NUMBER(12,2),                              /*��ͬ������      */
   CONIC015             NUMBER(12,2),                              /*��ǰ��ͬ���      */
   CONIC016             INTEGER,                                   /*����ID            */
   CONIC017             INTEGER,                                   /*���õ�ID          */
   CONIC018             INTEGER,                                   /*ǩԼӪ����֯ID    */
   CONIC019             VARCHAR2(1)                     not null,  /*���ⷽʽ          */
   CONIC020             INTEGER                         not null,  /*ҵ����ID        */
   CONIC021             INTEGER                         not null,  /*ҵ����ԱID        */
   CONIC022             INTEGER,                                   /*¼����ID          */
   CONIC023             DATE,                                      /*¼������          */
   CONIC024             INTEGER,                                   /*�����ID          */
   CONIC025             DATE,                                      /*�������          */
   CONIC026             VARCHAR2(1)                     not null,  /*��ͬ״̬          */
   CONIC027             INTEGER,                                   /*��ֹ��ID          */
   CONIC028             DATE,                                      /*��ֹ����          */
   CONIC029             VARCHAR2(1)                     not null,  /*��ֹ״̬          */
   CONIC030             INTEGER,                                   /*������õ�ID      */
   CONIC031             INTEGER,                                   /*��ֹԭ��ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_CONIC primary key (CONIC_ID)
);
create unique index AK_TB_CONIC on TB_CONIC (CONIC001,CONIC002);
create sequence SEQ_TB_CONIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONIC to public;
grant index  on TB_CONIC to public;
grant update on TB_CONIC to public; 
grant delete on TB_CONIC to public;  
grant insert on TB_CONIC to public; 
grant select on SEQ_TB_CONIC to public;   