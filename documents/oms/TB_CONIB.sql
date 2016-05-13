/*
================================================================================
��ṹ����:TB_CONIB
��ṹ����:���λ��ͬ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONIB;
drop index AK_TB_CONIB;
drop table TB_CONIB;
create table TB_CONIB  (
   CONIB_ID             INTEGER                         not null,  /*���λ��ͬID      */
   CONIB001             VARCHAR2(30)                    not null,  /*���λ��ͬ��      */
   CONIB002             NUMBER(5,0)                     not null,  /*�汾��            */
   CONIB003             INTEGER                         not null,  /*���λID          */
   CONIB004             DATE                            not null,  /*ǩ������          */
   CONIB005             INTEGER                         not null,  /*����ID            */
   CONIB006             INTEGER,                                   /*¥��ID            */
   CONIB007             INTEGER,                                   /*¥��ID            */
   CONIB008             NUMBER(12,2),                              /*��(m)             */
   CONIB009             NUMBER(12,2),                              /*��(m)             */
   CONIB010             NUMBER(12,2),                              /*���(m2)          */
   CONIB011             DATE                            not null,  /*��������          */
   CONIB012             DATE                            not null,  /*����ֹ��          */
   CONIB013             NUMBER(12,2),                              /*��ͬ���          */
   CONIB014             NUMBER(12,2),                              /*��ͬ������      */
   CONIB015             NUMBER(12,2),                              /*��ǰ��ͬ���      */
   CONIB016             INTEGER,                                   /*����ID            */
   CONIB017             INTEGER,                                   /*���õ�ID          */
   CONIB018             INTEGER,                                   /*ǩԼӪ����֯ID    */
   CONIB019             VARCHAR2(1)                     not null,  /*���ⷽʽ          */
   CONIB020             INTEGER                         not null,  /*ҵ����ID        */
   CONIB021             INTEGER                         not null,  /*ҵ����ԱID        */
   CONIB022             INTEGER,                                   /*¼����ID          */
   CONIB023             DATE,                                      /*¼������          */
   CONIB024             INTEGER,                                   /*�����ID          */
   CONIB025             DATE,                                      /*�������          */
   CONIB026             VARCHAR2(1)                     not null,  /*��ͬ״̬          */
   CONIB027             INTEGER,                                   /*�����ID          */
   CONIB028             DATE,                                      /*�������          */
   CONIB029             VARCHAR2(1)                     not null,  /*���״̬          */
   CONIB030             INTEGER,                                   /*������õ�ID      */
   CONIB031             INTEGER,                                   /*���ԭ��ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_CONIB primary key (CONIB_ID)
);
create unique index AK_TB_CONIB on TB_CONIB (CONIB001,CONIB002);
create sequence SEQ_TB_CONIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONIB to public;
grant index  on TB_CONIB to public;
grant update on TB_CONIB to public; 
grant delete on TB_CONIB to public;  
grant insert on TB_CONIB to public; 
grant select on SEQ_TB_CONIB to public;   