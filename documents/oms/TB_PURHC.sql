/*
================================================================================
表结构代码:TB_PURHC
表结构名称:补件采购单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHC;
drop index AK_TB_PURHC;
drop table TB_PURHC;
create table TB_PURHC  (
   PURHC_ID           INTEGER                            not null,     /*补件订单ID       */ 
   PURHC001           INTEGER                            not null,     /*补件订单单别     */ 
   PURHC002           VARCHAR2(30)                       not null,     /*补件订单单号     */ 
   PURHC003           DATE                               not null,     /*订单日期         */ 
   PURHC004           INTEGER,                                         /*来源单号         */ 
   PURHC005           INTEGER                            not null,     /*补件营运组织     */ 
   PURHC006           INTEGER                            not null,     /*补件部门         */ 
   PURHC007           INTEGER                            not null,     /*采购员           */ 
   PURHC008           INTEGER                            not null,     /*供应商           */ 
   PURHC009           VARCHAR2(1)                        not null,     /*经营方式         */ 
   PURHC010           VARCHAR2(1)                        not null,     /*采配方式         */ 
   PURHC011           DATE                               not null,     /*交货日期         */ 
   PURHC012           DATE,                                            /*终止日期         */ 
   PURHC013           VARCHAR2(255),                                   /*送货地址         */ 
   PURHC014           VARCHAR2(255),                                   /*备注             */ 
   PURHC015           VARCHAR2(1),                                     /*审核状态         */ 
   PURHC016           INTEGER,                                         /*录入人           */ 
   PURHC017           DATE,                                            /*录入日期         */ 
   PURHC018           INTEGER,                                         /*审核人           */ 
   PURHC019           DATE,                                            /*审核日期         */ 
   CREATE_USER        VARCHAR2(12),                                    /*建立人员         */
   USER_GROUP         VARCHAR2(12),                                    /*建立人员部门     */                               
   CREATE_DATE        DATE,                                            /*建立日期         */
   MODIFIER           VARCHAR2(12),                                    /*修改人员         */
   MODI_DATE          DATE,                                            /*修改日期         */
   FLAG               NUMBER(1),                                       /*资料状态         */
   constraint PK_TB_PURHC primary key (PURHC_ID)
);
create unique index AK_TB_PURHC on TB_PURHC (PURHC_ID,PURHC001, PURHC002);
create sequence SEQ_TB_PURHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHC to public;
grant index  on TB_PURHC to public;
grant update on TB_PURHC to public; 
grant delete on TB_PURHC to public;  
grant insert on TB_PURHC to public; 
grant select on SEQ_TB_PURHC to public;   