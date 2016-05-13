/*
================================================================================
��ṹ����:TB_DTBDM
��ṹ����:����������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_DTBDM;
drop index AK_TB_DTBDM;
drop table TB_DTBDM;
create table TB_DTBDM  (                                       
   DTBDM_ID           INTEGER                     not null,    /*���������ID         */         
   DTBDM001           INTEGER                     not null,    /*��Ʒ����ؿⵥ��ϸID */
   DTBDM002           INTEGER                     not null,    /*�������ϸID         */
   DTBDM003           INTEGER                     not null,    /*�����λ             */
   DTBDM004	      VARCHAR2(64) 		  not null,    /*�������             */
   DTBDM005           NUMBER(28,0)                not null,    /*�������             */
   DTBDM006           INTEGER                     not null,    /*���������ID*/ --add by peiyn 2011-11-1
   CREATE_USER        VARCHAR2(12),                            /*������Ա             */
   USER_GROUP         VARCHAR2(12),                            /*������Ա����         */                              
   CREATE_DATE        DATE,                                    /*��������             */
   MODIFIER           VARCHAR2(12),                            /*�޸���Ա             */
   MODI_DATE          DATE,                                    /*�޸�����             */
   FLAG               NUMBER,                                  /*����״̬             */
   constraint PK_TB_DTBDM primary key (DTBDM_ID)                               
);                                           
create unique index AK_TB_DTBDM on TB_DTBDM (DTBDM002,DTBDM004,FLAG);               
create sequence SEQ_TB_DTBDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDM to public;                                     
grant index  on TB_DTBDM to public;                                     
grant update on TB_DTBDM to public;                                      
grant delete on TB_DTBDM to public;                                       
grant insert on TB_DTBDM to public;                                      
grant select on SEQ_TB_DTBDM to public;                                        