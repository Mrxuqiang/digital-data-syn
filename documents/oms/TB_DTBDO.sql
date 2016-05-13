/*
================================================================================
��ṹ����:TB_DTBDO
��ṹ����:��Ʒ��������������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_DTBDO;
drop index AK_TB_DTBDO;
drop table TB_DTBDO;
create table TB_DTBDO  (                                       
   DTBDO_ID           INTEGER                     not null,    /*��Ʒ�����������ID   */         
   DTBDO001           INTEGER                     not null,    /*��Ʒ�����������ϸID */
   DTBDO002           INTEGER                     not null,    /*������λ             */
   DTBDO003	      VARCHAR2(64) 		  not null,    /*�������             */
   DTBDO004           NUMBER(28,0)                not null,    /*��������             */
   DTBDO005           INTEGER                     not null,    /*��Ʒ���������ID*/--add by peiyn 2011-11-1
   CREATE_USER        VARCHAR2(12),                            /*������Ա             */
   USER_GROUP         VARCHAR2(12),                            /*������Ա����         */                              
   CREATE_DATE        DATE,                                    /*��������             */
   MODIFIER           VARCHAR2(12),                            /*�޸���Ա             */
   MODI_DATE          DATE,                                    /*�޸�����             */
   FLAG               NUMBER,                                  /*����״̬             */
   constraint PK_TB_DTBDO primary key (DTBDO_ID)                               
);                                           
create unique index AK_TB_DTBDL on TB_DTBDL (DTBDL001,DTBDL002,DTBDL003,DTBDL004,DTBDL006,flag);      
create sequence SEQ_TB_DTBDO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDO to public;                                     
grant index  on TB_DTBDO to public;                                     
grant update on TB_DTBDO to public;                                      
grant delete on TB_DTBDO to public;                                       
grant insert on TB_DTBDO to public;                                      
grant select on SEQ_TB_DTBDO to public;                                        