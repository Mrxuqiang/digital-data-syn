create table TB_MSSAJ  (
   MSSAJ_ID             INTEGER                         not null,  /* ID          */
   MSSAJ001             INTEGER                         not null,  /*大区id       */
   MSSAJ002             INTEGER,                                   /*小区id       */
   MSSAJ003             INTEGER,                                   /*商场id       */
   MSSAJ004             VARCHAR2(30),                              /*品牌id        */
   MSSAJ005             INTEGER,                                   /*系列id        */  --20141106 add by sundan
   CREATE_USER          VARCHAR2(12),                              /*建立人员      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门  */                               
   CREATE_DATE          DATE,                                      /*建立日期      */
   MODIFIER             VARCHAR2(12),                              /*修改人员      */
   MODI_DATE            DATE,                                      /*修改日期      */
   FLAG                 NUMBER(1),                                 /*资料状态      */
   constraint PK_TB_MSSAJ primary key (MSSAJ_ID)
);
create sequence SEQ_TB_MSSAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAJ to public;
grant index  on TB_MSSAJ to public;
grant update on TB_MSSAJ to public; 
grant delete on TB_MSSAJ to public;  
grant insert on TB_MSSAJ to public; 
grant select on SEQ_TB_MSSAJ to public;   
