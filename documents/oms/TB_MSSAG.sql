/*
================================================================================
表结构代码:TB_MSSAG
表结构名称：标价签打印规则设置主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MSSAG;
drop index AK_TB_MSSAG;
drop table TB_MSSAG;
create table TB_MSSAG  (
   MSSAG_ID           INTEGER                          not null,         /*标价签规则设置主ID   */   
   MSSAG001           INTEGER                          not null,         /*营运组织             */   
   MSSAG002           NUMBER(4),                                         /*价签再次打印数量     */  
   MSSAG003           NUMBER(4) ,                                        /*价签再次打印时间周期 */ 
   MSSAG004           NUMBER(4),                                         /*调价签申请周期       */
   MSSAG005           NUMBER(4),                                         /*调整幅度上限（%）    */
   MSSAG006           NUMBER(4),                                         /*调整幅度下限（%）    */
   MSSAG007           NUMBER(4),                                         /*降价周期             */
   MSSAG008           NUMBER(4),                                         /*降价幅度（%）        */
   MSSAG009           NUMBER(4),                                         /*降价区间             */
   MSSAG010           NUMBER(4),                                         /*降价比率（%）        */
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_MSSAG primary key (MSSAG_ID)
);
create unique index AK_TB_MSSAG on TB_MSSAG (MSSAG001,FLAG);
create sequence SEQ_TB_MSSAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSAG to public;
grant index  on TB_MSSAG to public;
grant update on TB_MSSAG to public; 
grant delete on TB_MSSAG to public;  
grant insert on TB_MSSAG to public; 
grant select on SEQ_TB_MSSAG to public;   