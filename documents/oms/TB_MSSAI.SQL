create table TB_MSSAI  (
   MSSAI_ID             INTEGER                         not null,  /*ID   */
   MSSAI001             INTEGER                         not null,  /*营运组织id   */
   MSSAI002             INTEGER,                                   /*品牌  ID     */
   MSSAI003             INTEGER,                                   /*员工id        */
   MSSAI004             INTEGER,                                   /*系列id        */ --20141106 add by sundan
   CREATE_USER          VARCHAR2(12),                              /*建立人员      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门  */                               
   CREATE_DATE          DATE,                                      /*建立日期      */
   MODIFIER             VARCHAR2(12),                              /*修改人员      */
   MODI_DATE            DATE,                                      /*修改日期      */
   FLAG                 NUMBER(1),                                 /*资料状态      */
   constraint PK_TB_MSSAI primary key (MSSAI_ID)
);
create sequence SEQ_TB_MSSAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAI to public;
grant index  on TB_MSSAI to public;
grant update on TB_MSSAI to public; 
grant delete on TB_MSSAI to public;  
grant insert on TB_MSSAI to public; 
grant select on SEQ_TB_MSSAI to public;   
