/*
================================================================================
��ṹ����:TB_PMTFO
��ṹ����:���˵����ֻ�����Ϣ
��ṹĿ��:
================================================================================
*/
drop sequence SEQ_TB_PMTFO;
drop index AK_TB_PMTFO;
drop table TB_PMTFO;

create table TB_PMTFO  (
   PMTFO_ID             INTEGER                         not null,  /*���˵����ֻ�����Ϣid*/
   PMTFO001             INTEGER                         not null,  /*���˵�ID      */
   PMTFO002             INTEGER,                                   /*ȯ��ID        */
   PMTFO003             NUMBER(12,2)                         ,     /*ȯ���          */
   PMTFO004             NUMBER(12)                        ,        /*��ʼȯ��       */
   PMTFO005             NUMBER(12)                         ,       /*����ȯ��      */
   PMTFO006             NUMBER(12)                          ,      /*ȯ����       */
   PMTFO007             NUMBER(12,2)                         ,     /*ȯ���    */
   CREATE_USER          VARCHAR2(12),                              /*������Ա      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����  */                               
   CREATE_DATE          DATE,                                      /*��������      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա      */
   MODI_DATE            DATE,                                      /*�޸�����      */
   FLAG                 NUMBER(1),                                 /*����״̬      */
   constraint PK_TB_PMTFO primary key (PMTFO_ID)
);
create sequence SEQ_TB_PMTFO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFO to public;
grant index  on TB_PMTFO to public;
grant update on TB_PMTFO to public; 
grant delete on TB_PMTFO to public;  
grant insert on TB_PMTFO to public; 
grant select on SEQ_TB_PMTFO to public;  