/*
================================================================================
��ṹ����:TB_DTBDJ
��ṹ����:�ų����޸�������Ϣ��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_DTBDJ;
drop index AK_TB_DTBDJ;
drop table TB_DTBDJ;
create table TB_DTBDJ  (                                       
   DTBDJ_ID         INTEGER                not null,             /*��Ϣ��ID          */
   DTBDJ001         INTEGER                not null,             /*�ų�������ID      */
   DTBDJ002         INTEGER                not null,             /*�ų����ͻ��ӱ�ID  */
   DTBDJ003         DATE,                                        /*�޸�����          */
   DTBDJ004         INTEGER,                                     /*�޸Ĵ���          */
   DTBDJ005         VARCHAR2(255),                               /*�޸�ԭ��          */
   CREATE_USER      VARCHAR2(12),                                /*������Ա          */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����      */             
   CREATE_DATE      DATE,                                        /*��������          */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա          */             
   MODI_DATE        DATE,                                        /*�޸�����          */             
   FLAG             NUMBER(1),                                   /*����״̬          */            


  constraint PK_TB_DTBDJ primary key (DTBDJ_ID)                               
);
create unique index AK_TB_DTBDJ on TB_DTBDJ (DTBDJ001,DTBDJ002);                                                    
create sequence SEQ_TB_DTBDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDJ to public;                                     
grant index  on TB_DTBDJ to public;                                     
grant update on TB_DTBDJ to public;                                      
grant delete on TB_DTBDJ to public;                                       
grant insert on TB_DTBDJ to public;                                      
grant select on SEQ_TB_DTBDJ to public;                                        