/*
================================================================================
表结构代码:TB_SERDD
表结构名称:服务分值定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDD;
drop index AK_TB_SERDD;
drop table TB_SERDD;
create table TB_SERDD  (
   SERDD_ID           INTEGER                          not null,         /*分值定义ID        */   
   SERDD001           VARCHAR2(30)                     not null,         /*分值编号          */   
   SERDD002           VARCHAR2(30)                     not null,         /*分值名称          */   
   SERDD003           INTEGER                          not null,         /*商品编号          */   
   SERDD004           NUMBER(12,2),                                      /*安装分值 起       */   
   SERDD005           NUMBER(12,2),                                      /*安装分值 止       */   
   SERDD006           NUMBER(12,2),                                      /*包装分值 起       */   
   SERDD007           NUMBER(12,2),                                      /*包装分值 止       */   
   SERDD008           NUMBER(12,2),                                      /*搬运分值 起       */   
   SERDD009           NUMBER(12,2),                                      /*搬运分值 止       */   
   SERDD010           NUMBER(12,2),                                      /*拆装分值 起       */   
   SERDD011           NUMBER(12,2),                                      /*拆装分值 止       */   
   SERDD012           NUMBER(12,2),                                      /*卸货分值 起       */   
   SERDD013           NUMBER(12,2),                                      /*卸货分值 止       */   
   SERDD014           NUMBER(12,2),                                      /*调厂调库分值 起   */   
   SERDD015           NUMBER(12,2),                                      /*调厂调库分值 止   */   
   SERDD016           NUMBER(12,2),                                      /*维护维修分值 起   */   
   SERDD017           NUMBER(12,2),                                      /*维护维修分值 止   */   
   SERDD018           NUMBER(12,2),                                      /*其他分值 起       */   
   SERDD019           NUMBER(12,2),                                      /*其他分值 止       */   
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_SERDD primary key (SERDD_ID)
);
create unique index AK_TB_SERDD on TB_SERDD (SERDD001,SERDD003);
create sequence SEQ_TB_SERDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDD to public;
grant index  on TB_SERDD to public;
grant update on TB_SERDD to public; 
grant delete on TB_SERDD to public;  
grant insert on TB_SERDD to public; 
grant select on SEQ_TB_SERDD to public;   