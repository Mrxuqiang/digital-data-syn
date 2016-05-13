/*
================================================================================
表结构代码:TB_PMTFO
表结构名称:销退单卷种回收信息
表结构目的:
================================================================================
*/
drop sequence SEQ_TB_PMTFO;
drop index AK_TB_PMTFO;
drop table TB_PMTFO;

create table TB_PMTFO  (
   PMTFO_ID             INTEGER                         not null,  /*销退单卷种回收信息id*/
   PMTFO001             INTEGER                         not null,  /*销退单ID      */
   PMTFO002             INTEGER,                                   /*券种ID        */
   PMTFO003             NUMBER(12,2)                         ,     /*券面额          */
   PMTFO004             NUMBER(12)                        ,        /*开始券号       */
   PMTFO005             NUMBER(12)                         ,       /*结束券号      */
   PMTFO006             NUMBER(12)                          ,      /*券张数       */
   PMTFO007             NUMBER(12,2)                         ,     /*券金额    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门  */                               
   CREATE_DATE          DATE,                                      /*建立日期      */
   MODIFIER             VARCHAR2(12),                              /*修改人员      */
   MODI_DATE            DATE,                                      /*修改日期      */
   FLAG                 NUMBER(1),                                 /*资料状态      */
   constraint PK_TB_PMTFO primary key (PMTFO_ID)
);
create sequence SEQ_TB_PMTFO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFO to public;
grant index  on TB_PMTFO to public;
grant update on TB_PMTFO to public; 
grant delete on TB_PMTFO to public;  
grant insert on TB_PMTFO to public; 
grant select on SEQ_TB_PMTFO to public;  