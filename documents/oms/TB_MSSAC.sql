/*
================================================================================
表结构代码:TB_MSSAC
表结构名称：标价签打印规则设置主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSAC;
drop index AK_TB_MSSAC;
drop table TB_MSSAC;
create table TB_MSSAC  (
   MSSAC_ID           INTEGER                          not null,         /*标价签规则设置主ID   */   
   MSSAC001           INTEGER                          not null,         /*营运组织             */   
   MSSAC002           NUMBER(4),                                         /*价签再次打印数量     */  
   MSSAC003           NUMBER(4) ,                                        /*价签再次打印时间周期 */ 
   MSSAC004           NUMBER(4),                                         /*调价签申请周期       */
   MSSAC005           NUMBER(4),                                         /*调整幅度上限（%）    */
   MSSAC006           NUMBER(4),                                         /*调整幅度下限（%）    */
   MSSAC007           NUMBER(4),                                         /*降价周期             */
   MSSAC008           NUMBER(4),                                         /*降价幅度（%）        */
   MSSAC009           NUMBER(4),                                         /*降价区间             */
   MSSAC010           NUMBER(4),                                         /*降价比率（%）        */
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_MSSAC primary key (MSSAC_ID)
);
create unique index AK_TB_MSSAC on TB_MSSAC (MSSAC001,FLAG);
create sequence SEQ_TB_MSSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAC to public;
grant index  on TB_MSSAC to public;
grant update on TB_MSSAC to public; 
grant delete on TB_MSSAC to public;  
grant insert on TB_MSSAC to public; 
grant select on SEQ_TB_MSSAC to public;   