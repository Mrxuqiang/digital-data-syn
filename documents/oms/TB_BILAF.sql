/*
20131122 add by gaoxl for 订金转租金单 增加费用金额：bilaf013
20140416 add by gaoxl for 增加展位id，合同id
*/

/*
================================================================================
表结构代码:TB_BILAF
表结构名称:费用收款单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAF;
drop index AK_TB_BILAF;
drop table TB_BILAF;
create table TB_BILAF  (
   BILAF_ID             INTEGER                         not null,  /*费用收款子ID         */
   BILAF001             INTEGER                         not null,  /*费用收款主ID         */
   BILAF002             VARCHAR2(1)                     not null,  /*来源                 */   
   BILAF003             VARCHAR2(30),                              /*来源单号             */  
   BILAF004             INTEGER,                                   /*来源单主ID           */  
   BILAF005             INTEGER,                                   /*来源单子ID           */         
   BILAF006             INTEGER,                                   /*费用ID               */
   BILAF007             NUMBER(12,2),                              /*收款金额             */
   BILAF008             DATE,                                      /*费用起日             */
   BILAF009             DATE,                                      /*费用止日             */
   BILAF010             VARCHAR2(255),                             /*备注                 */   
   BILAF011             NUMBER(22,2),                              /*已返款金额           */
   BILAF012             VARCHAR2(50),                              /*交款单位             */
   BILAF013             NUMBER(22,2),                              /*费用金额             */
   BILAF014             VARCHAR2(4),                               /*所属公司代码               */
   BILAF015             VARCHAR2(5),                               /*贸易伙伴代码              */ 
   BILAF016             INTEGER,                                   /*展位ID     */ 
   BILAF017             INTEGER,                                   /*合同ID     */  
   BILAF018             VARCHAR2(100),                             /*费用收款单门牌号     */ 
   BILAF019             VARCHAR2(100),                             /*订金转租金转入商户门牌号     */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_BILAF primary key (BILAF_ID)
);
create sequence SEQ_TB_BILAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAF to public;
grant index  on TB_BILAF to public;
grant update on TB_BILAF to public; 
grant delete on TB_BILAF to public;  
grant insert on TB_BILAF to public; 
grant select on SEQ_TB_BILAF to public;   