/*
================================================================================
��ṹ����:TB_PUBHU
��ṹ����:��Ʒ���Ա������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHU;
drop index AK_TB_PUBHU;
drop table TB_PUBHU;
create table TB_PUBHU  (
   PUBHU_ID           INTEGER                      not null,       /*��Ʒ���Ա��ID         */ 
   PUBHU001           INTEGER                      not null,       /*��Ʒ����ID             */ 
   PUBHU002           VARCHAR2(30)                 not null,       /*��Ʒ��������           */ 
   PUBHU003           INTEGER                      not null,       /*Ӫ����֯               */ 
   PUBHU004           INTEGER                      not null,       /*�ƶ���                 */ 
   PUBHU005           DATE                         not null,       /*�ƶ�����               */ 
   PUBHU006           VARCHAR2(4)                  not null,       /*������               */ 
   PUBHU007           INTEGER,                                     /*�����                 */ 
   PUBHU008           DATE,                                        /*�������               */ 
   PUBHU009           VARCHAR2(1),                                 /*���״̬               */ 
   PUBHU010           VARCHAR2(255),                               /*��ע                   */ 
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */                               
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   constraint PK_TB_PUBHU primary key (PUBHU_ID)
);
create unique index AK_TB_PUBHU on TB_PUBHU (PUBHU001,PUBHU002);
create sequence SEQ_TB_PUBHU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHU to public;
grant index  on TB_PUBHU to public;
grant update on TB_PUBHU to public; 
grant delete on TB_PUBHU to public;  
grant insert on TB_PUBHU to public; 
grant select on SEQ_TB_PUBHU to public;   