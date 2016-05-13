/*
================================================================================
��ṹ����:TB_CONIA
��ṹ����:���λ��ͬ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONIA;
drop index AK_TB_CONIA;
drop table TB_CONIA;
create table TB_CONIA  (
   CONIA_ID             INTEGER                         not null,  /*���λ��ͬID      */
   CONIA001             VARCHAR2(30)                    not null,  /*���λ��ͬ��      */
   CONIA002             NUMBER(5,0)                     not null,  /*�汾��            */
   CONIA003             INTEGER                         not null,  /*���λID          */
   CONIA004             DATE                            not null,  /*ǩ������          */
   CONIA005             INTEGER                         not null,  /*����ID            */
   CONIA006             INTEGER,                                   /*¥��ID            */
   CONIA007             INTEGER,                                   /*¥��ID            */
   CONIA008             NUMBER(12,2),                              /*��(m)             */
   CONIA009             NUMBER(12,2),                              /*��(m)             */
   CONIA010             NUMBER(12,2),                              /*���(m2)          */
   CONIA011             DATE                            not null,  /*��������          */
   CONIA012             DATE                            not null,  /*����ֹ��          */
   CONIA013             NUMBER(12,2),                              /*��ͬ���          */
   CONIA014             NUMBER(12,2),                              /*��ͬ������      */
   CONIA015             NUMBER(12,2),                              /*��ǰ��ͬ���      */
   CONIA016             INTEGER,                                   /*����ID            */
   CONIA017             INTEGER,                                   /*���õ�ID          */
   CONIA018             INTEGER,                                   /*ǩԼӪ����֯ID    */
   CONIA019             VARCHAR2(1)                     not null,  /*���ⷽʽ          */
   CONIA020             INTEGER                         not null,  /*ҵ����ID        */
   CONIA021             INTEGER                         not null,  /*ҵ����ԱID        */
   CONIA022             INTEGER,                                   /*¼����ID          */
   CONIA023             DATE,                                      /*¼������          */
   CONIA024             INTEGER,                                   /*�����ID          */
   CONIA025             DATE,                                      /*�������          */
   CONIA026             VARCHAR2(1)                     not null,  /*��ͬ״̬N.δ��� Y.��� Z.��ֹ  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_CONIA primary key (CONIA_ID)
);
create unique index AK_TB_CONIA on TB_CONIA (CONIA001);
create sequence SEQ_TB_CONIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONIA to public;
grant index  on TB_CONIA to public;
grant update on TB_CONIA to public; 
grant delete on TB_CONIA to public;  
grant insert on TB_CONIA to public; 
grant select on SEQ_TB_CONIA to public;   