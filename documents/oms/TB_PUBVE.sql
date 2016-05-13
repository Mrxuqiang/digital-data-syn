/*
================================================================================
��ṹ����:TB_PUBVE
��ṹ����:�ۺ������Ŀ�����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBVE;
drop index AK_TB_PUBVE;
drop table TB_PUBVE;
create table TB_PUBVE  (
   PUBVE_ID           INTEGER                          not null,         /*�ۺ����ID        */   
   PUBVE001           VARCHAR2(30)                     not null,         /*��Ŀ����          */   
   PUBVE002           VARCHAR2(30)                     not null,         /*��Ŀ����          */   
   PUBVE003           VARCHAR2(2)                      not null,         /*��Ŀ����ID        */   
   PUBVE004           VARCHAR2(255),					 /*˵��		     */ 
   PUBVE005           VARCHAR2(1),                                       /*�Ƿ���ʾ          */ -- 20121030 add by shizhan for 15321
   CREATE_USER        VARCHAR2(1),                                       /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                      /*������Ա����      */                               
   CREATE_DATE        DATE,                                              /*��������          */
   MODIFIER           VARCHAR2(12),                                      /*�޸���Ա          */
   MODI_DATE          DATE,                                              /*�޸�����          */
   FLAG               NUMBER(1),                                         /*����״̬          */
   constraint PK_TB_PUBVE primary key (PUBVE_ID)
);
create unique index AK_TB_PUBVE on TB_PUBVE (PUBVE001,FLAG);
create sequence SEQ_TB_PUBVE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBVE to public;
grant index  on TB_PUBVE to public;
grant update on TB_PUBVE to public; 
grant delete on TB_PUBVE to public;  
grant insert on TB_PUBVE to public; 
grant select on SEQ_TB_PUBVE to public;   