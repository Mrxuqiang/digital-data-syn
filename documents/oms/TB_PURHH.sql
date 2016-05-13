/*
================================================================================
表结构代码:TB_PURHH
表结构名称:内部补件领用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHH;
drop index AK_TB_PURHH;
drop table TB_PURHH;
create table TB_PURHH  (
   PURHH_ID          INTEGER                                not null,       /*商品明细ID       */   
   PURHH001          INTEGER                                not null,       /*领用单ID         */   
   PURHH002          INTEGER                                not null,       /*商品编码         */   
   PURHH003          INTEGER,                                               /*维度1            */   
   PURHH004          INTEGER,                                               /*维度2            */   
   PURHH005          INTEGER,                                               /*维度3            */   
   PURHH006          INTEGER,                                               /*维度4            */   
   PURHH007          INTEGER,                                               /*维度5            */  
   PURHH008          INTEGER,                                               /*货位             */      
   PURHH009          INTEGER                                not null,       /*领用单位         */   
   PURHH010         NUMBER(18,3),                                          /*申请量           */   
   PURHH011          NUMBER(18,3)                           not null,    /*领用量           */  
   PURHH012          INTEGER                                        ,       /*所属主件商品ID   */   
   PURHH013          NUMBER(12,2),                                          /*税前单价         */     
   PURHH014          NUMBER(12,2),                                          /*含税单价         */     
   PURHH015          INTEGER,                                               /*税种             */     
   PURHH016          NUMBER(12,2),                                          /*税率             */     
   PURHH017          NUMBER(12,2),                                          /*税前金额         */       
   PURHH018          NUMBER(12,2),                                          /*含税金额         */       
   PURHH019          VARCHAR2(1)                            not null,       /*销售属性 */   
   PURHH020          VARCHAR2(255)                                 ,       /*补件原因        */   
   PURHH021          VARCHAR2(255),                                         /*备注              */ 
   PURHH022          VARCHAR2(1)                            not null,       /*是否取回损坏件*/
   PURHH023          NUMBER(12,2)                           not null,       /*售价             */ 
   PURHH024          VARCHAR2(30)                                           /*子套件随机对应码*/ 
   PURHH025          VARCHAR2(1)                                       ,       /*是否主件 */
   PURHH026          VARCHAR2(1)                                       ,       /*是否成分 */   
   PURHH027          INTEGER                                        ,       /*批次ID*/   
   CREATE_USER       VARCHAR2(12),                                          /*建立人员         */
   USER_GROUP        VARCHAR2(12),                                          /*建立人员部门     */                               
   CREATE_DATE       DATE,                                                  /*建立日期         */
   MODIFIER          VARCHAR2(12),                                          /*修改人员         */
   MODI_DATE         DATE,                                                  /*修改日期         */
   FLAG              NUMBER(1),                                             /*资料状态         */
   constraint PK_TB_PURHH primary key (PURHH_ID)
);
create sequence SEQ_TB_PURHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHH to public;
grant index  on TB_PURHH to public;
grant update on TB_PURHH to public; 
grant delete on TB_PURHH to public;  
grant insert on TB_PURHH to public; 
grant select on SEQ_TB_PURHH to public;   