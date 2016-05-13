/*
================================================================================
��ṹ����:TB_DTBCG
��ṹ����:�ų�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCG;
drop index AK_TB_DTBCG;
drop table TB_DTBCG;
create table TB_DTBCG  (
   DTBCG_ID	        INTEGER                 not null,    /*�ų���ID        */                  
   DTBCG001	        INTEGER                 not null,    /*�ų�����        */                  
   DTBCG002	        VARCHAR2(30)            not null,    /*�ų�����        */                  
   DTBCG003         INTEGER                 not null,    /*Ԥ�ų���ID      */ 
   DTBCG004	        DATE                    not null,    /*�ų�����        */ 
   DTBCG005	        INTEGER                 not null,    /*�������        */                  
   DTBCG006	        VARCHAR2(1),                         /*��Դ���        */                  
   DTBCG007	        INTEGER,                             /*�����ص�        */                  
   DTBCG008	        INTEGER,                             /*����·��        */                  
   DTBCG009	        INTEGER,                             /*����            */                  
   DTBCG010	        NUMBER(12,2)            not null,    /*����������      */                  
   DTBCG011	        INTEGER                 not null,    /*Ӫ����֯ID      */                  
   DTBCG012	        VARCHAR2(1)             not null,    /*���״̬        */                  
   DTBCG013	        INTEGER,                             /*¼����Ա        */                  
   DTBCG014	        DATE,                                /*¼������        */                  
   DTBCG015	        INTEGER,                             /*�����Ա        */                  
   DTBCG016	        DATE,                                /*�������        */   
   DTBCG017	        INTEGER,                             /*�泵��Ա1        */                  
   DTBCG018	        INTEGER,                             /*�泵��Ա2        */                  
   DTBCG019	        INTEGER,                             /*�泵��Ա3        */                              
   DTBCG020	        INTEGER,                             /*�泵��Ա4        */                                 
   DTBCG021	        INTEGER,                            /*�泵��Ա5        */                                
   CREATE_USER      VARCHAR2(12),                               /*������Ա         */
   USER_GROUP       VARCHAR2(12),                               /*������Ա����     */                               
   CREATE_DATE      DATE,                                       /*��������         */
   MODIFIER         VARCHAR2(12),                               /*�޸���Ա         */
   MODI_DATE        DATE,                                       /*�޸�����         */
   FLAG             NUMBER(1),                                  /*����״̬         */
   constraint PK_TB_DTBCG primary key (DTBCG_ID)
);
create unique index AK_TB_DTBCG on TB_DTBCG (DTBCG001,DTBCG002);
create sequence SEQ_TB_DTBCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCG to public;
grant index  on TB_DTBCG to public;
grant update on TB_DTBCG to public; 
grant delete on TB_DTBCG to public;  
grant insert on TB_DTBCG to public; 
grant select on SEQ_TB_DTBCG to public;   