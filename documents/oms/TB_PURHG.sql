/*
================================================================================
��ṹ����:TB_PURHG
��ṹ����:�ڲ��������õ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHG;
drop index AK_TB_PURHG;
drop table TB_PURHG;
create table TB_PURHG  (
   PURHG_ID           INTEGER                             not null,     /*���õ�ID           */ 
   PURHG001           INTEGER                              not null,     /*���õ���           */ 
   PURHG002           VARCHAR2(30)                    not null,     /*���õ���           */ 
   PURHG003           DATE                                   not null,     /*��������           */ 
   PURHG004           INTEGER                             not null,     /*����Ӫ����֯       */ 
   PURHG005           INTEGER                             not null,     /*���ò���           */ 
   PURHG006           INTEGER                             not null,     /*������             */ 
   PURHG007           INTEGER                            not null,     /*���òֿ�        */ 
   PURHG008           VARCHAR2(255)                                   /*��ע               */ 
   PURHG009           VARCHAR2(1),                                       /*���״̬         */ 
   PURHG010           INTEGER,                                              /*¼����             */ 
   PURHG011           DATE,                                                   /*¼������           */ 
   PURHG012           INTEGER,                                             /*�����             */ 
   PURHG013           DATE,                                                   /*�������           */ 
   CREATE_USER        VARCHAR2(12),                                /*������Ա           */
   USER_GROUP         VARCHAR2(12),                                 /*������Ա����       */                               
   CREATE_DATE        DATE,                                              /*��������           */
   MODIFIER           VARCHAR2(12),                                   /*�޸���Ա           */
   MODI_DATE          DATE,                                               /*�޸�����           */
   FLAG               NUMBER(1),                                        /*����״̬           */
   constraint PK_TB_PURHG primary key (PURHG_ID)
);
create unique index AK_TB_PURHG on TB_PURHG (PURHG_ID,PURHG001, PURHG002);
create sequence SEQ_TB_PURHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHG to public;
grant index  on TB_PURHG to public;
grant update on TB_PURHG to public; 
grant delete on TB_PURHG to public;  
grant insert on TB_PURHG to public; 
grant select on SEQ_TB_PURHG to public;   