/*
================================================================================
表结构代码:TB_PURHF
表结构名称:客户补件领用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHF;
drop index AK_TB_PURHF;
drop table TB_PURHF;
create table TB_PURHF  (
   PURHF_ID          INTEGER                                not null,       /*商品明细ID       */   
   PURHF001          INTEGER                                not null,       /*领用单ID         */   
   PURHF002          INTEGER                                not null,       /*商品编码         */   
   PURHF003          INTEGER,                                               /*维度1            */   
   PURHF004          INTEGER,                                               /*维度2            */   
   PURHF005          INTEGER,                                               /*维度3            */   
   PURHF006          INTEGER,                                               /*维度4            */   
   PURHF007          INTEGER,                                               /*维度5            */ 
   PURHF008          INTEGER,                                               /*仓库             */    
   PURHF009          INTEGER,                                               /*库位             */      
   PURHF010          INTEGER                                not null,       /*领用单位         */   
   PURHF011          NUMBER(18,3),                                          /*申请量           */   
   PURHF012          NUMBER(18,3)                           not null,       /*领用量           */  
   PURHF013          INTEGER                                not null,       /*所属主件商品ID   */   
   PURHF014          VARCHAR2(1)                            not null,       /*商品服务属性     */   
   PURHF015          INTEGER                                not null,       /*补件原因         */   
   PURHF016          NUMBER(12,2)                           not null,       /*单位换算率       */   
   PURHF017          VARCHAR2(255),                                         /*备注             */ 
   PURHF018          VARCHAR2(1)                            not null,       /*是否取回损坏件   */
   PURHF019          VARCHAR2(1)                            not null,       /*状态码           */
   PURHF020          NUMBER(12,2)                           not null,       /*售价             */ 
   PURHF021          NUMBER(12,2)                           not null,       /*金额             */       
   PURHF022          VARCHAR2(30),                                          /*主批号           */ 
   PURHF023          VARCHAR2(1)                            not null,       /*收款方式         */       
   PURHF024          NUMBER(12,2)                           not null,       /*收款金额         */       
   PURHF025          INTEGER,                                               /*手续费率ID       */       
   PURHF026          NUMBER(12,2),                                          /*手续金额         */ 
   PURHF027          INTEGER,                                               /*申请单明细ID     */
   CREATE_USER       VARCHAR2(12),                                          /*建立人员         */
   USER_GROUP        VARCHAR2(12),                                          /*建立人员部门     */                               
   CREATE_DATE       DATE,                                                  /*建立日期         */
   MODIFIER          VARCHAR2(12),                                          /*修改人员         */
   MODI_DATE         DATE,                                                  /*修改日期         */
   FLAG              NUMBER(1),                                             /*资料状态         */
   constraint PK_TB_PURHF primary key (PURHF_ID)
);
create unique index AK_TB_PURHF on TB_PURHF (PURHF_ID,PURHF002);
create sequence SEQ_TB_PURHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHF to public;
grant index  on TB_PURHF to public;
grant update on TB_PURHF to public; 
grant delete on TB_PURHF to public;  
grant insert on TB_PURHF to public; 
grant select on SEQ_TB_PURHF to public;   