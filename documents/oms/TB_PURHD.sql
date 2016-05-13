/*
================================================================================
表结构代码:TB_PURHD
表结构名称:补件采购单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHD;
drop index AK_TB_PURHD;
drop table TB_PURHD;
create table TB_PURHD  (
   PURHD_ID           INTEGER                           not null,          /*商品明细ID     */ 
   PURHD001           INTEGER                           not null,          /*补件订单单ID   */ 
   PURHD002           INTEGER,                                             /*来源项次ID     */ 
   PURHD003           INTEGER                           not null,          /*商品编码       */ 
   PURHD004           INTEGER,                                             /*维度1          */ 
   PURHD005           INTEGER,                                             /*维度2          */ 
   PURHD006           INTEGER,                                             /*维度3          */ 
   PURHD007           INTEGER,                                             /*维度4          */ 
   PURHD008           INTEGER,                                             /*维度5          */ 
   PURHD009           INTEGER                           not null,          /*采购单位       */ 
   PURHD010           NUMBER(18,3)                      not null,          /*申请量         */ 
   PURHD011           NUMBER(18,3)                      not null,          /*采购量         */ 
   PURHD012           NUMBER(18,3),                                        /*已交量         */ 
   PURHD013           NUMBER(12,2),                                        /*税前单价       */ 
   PURHD014           NUMBER(12,2),                                        /*含税单价       */ 
   PURHD015           INTEGER                           not null,          /*税种           */ 
   PURHD016           NUMBER(12,2)                      not null,          /*税率           */ 
   PURHD017           NUMBER(12,2),                                        /*税前金额       */ 
   PURHD018           NUMBER(12,2),                                        /*含税金额       */ 
   PURHD019           NUMBER(12,2),                                        /*扣率           */ 
   PURHD020           VARCHAR2(1)                       not null,          /*结案码         */ 
   PURHD021           NUMBER(12,2),                                        /*当前售价       */ 
   PURHD022           NUMBER(12,2),                                        /*当前扣率       */
   PURHD023           VARCHAR2(1)                       not null,          /*优先级         */
   PURHD024           DATE,                                                /*预交货日       */
   PURHD025           NUMBER(12,2)                      not null,          /*单位换算率     */
   PURHD026           VARCHAR2(255),                                       /*备注           */
   CREATE_USER        VARCHAR2(12),                                        /*建立人员         */
   USER_GROUP         VARCHAR2(12),                                        /*建立人员部门     */                               
   CREATE_DATE        DATE,                                                /*建立日期         */
   MODIFIER           VARCHAR2(12),                                        /*修改人员         */
   MODI_DATE          DATE,                                                /*修改日期         */
   FLAG               NUMBER(1),                                           /*资料状态         */
   constraint PK_TB_PURHD primary key (PURHD_ID)
);
create unique index AK_TB_PURHD on TB_PURHD (PURHD_ID,PURHD001,PURHD004);
create sequence SEQ_TB_PURHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHD to public;
grant index  on TB_PURHD to public;
grant update on TB_PURHD to public; 
grant delete on TB_PURHD to public;  
grant insert on TB_PURHD to public; 
grant select on SEQ_TB_PURHD to public;   