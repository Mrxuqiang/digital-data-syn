/*
20130929 add by gaoxl for 红星：增加来源类型SERIM007，存放扣分项所在的设置作业
*/
/*
================================================================================
表结构代码:TB_SERIM
表结构名称:商户信用分类月档子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIM;
drop index AK_TB_SERIM;
drop table TB_SERIM;
create table TB_SERIM  (
   SERIM_ID             INTEGER                         not null,  /*月档子ID      */
   SERIM001             INTEGER                         not null,  /*月档主ID      */
   SERIM002             VARCHAR2(30),                              /*来源程序      */
   SERIM003             VARCHAR2(60),                              /*程序名称      */
   SERIM004             INTEGER,                                   /*品牌ID        */   
   SERIM005             INTEGER,                                   /*扣分项ID      */
   SERIM006             NUMBER(2),                                 /*扣减分数      */ 
   SERIM007             VARCHAR2(10),                              /*来源类型      */          
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIM primary key (SERIM_ID)
);
create unique index AK_TB_SERIM on TB_SERIM (SERIM001,SERIM002,SERIM004,SERIM005,FLAG);
create sequence SEQ_TB_SERIM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIM to public;
grant index  on TB_SERIM to public;
grant update on TB_SERIM to public; 
grant delete on TB_SERIM to public;  
grant insert on TB_SERIM to public; 
grant select on SEQ_TB_SERIM to public;   