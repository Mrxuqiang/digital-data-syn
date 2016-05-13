/*
================================================================================
表结构代码:TB_PURGA
表结构名称:采购退货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURGA;
drop index AK_TB_PURGA;
drop table TB_PURGA;
create table TB_PURGA  (
   PURGA_ID             INTEGER                    not null,       /*退货单ID         */                                                                                
   PURGA001             VARCHAR2(1)                not null,       /*退货类型         */  -- mark 20100428                                                                               
   PURGA002             INTEGER                    not null,       /*退货单别         */                                                                                
   PURGA003             VARCHAR2(30)               not null,       /*退货单号         */                                                                                
   PURGA004             DATE                       not null,       /*退货日期         */                                                                                
   PURGA005             INTEGER,                                   /*来源单ID         */--20111108 modify by xiechun 来源单ID                                                                               
   PURGA006             INTEGER                   not null,        /*退货营运组织     */                                                                                
   PURGA007             INTEGER                   not null,        /*退货部门         */                                                                                
   PURGA008             INTEGER                   not null,        /*退货人员         */                                                                                
   PURGA009             INTEGER,                                   /*防损人员         */  -- mark 20100428                                                                           
   PURGA010             INTEGER,                                   /*商品组人员       */  -- mark 20100428                                                                           
   PURGA011             INTEGER                   not null,        /*供应商           */                                                                                
   PURGA012             VARCHAR2(1)               not null,        /*经营方式         */ -- mark 20100428                                                                                
   PURGA013             INTEGER,                                   /*应付暂估单ID     */ -- modify 20100427 
   PURGA014             VARCHAR2(255)             not null,        /*退货原因         */ --modify by xiechun                                                                               
   PURGA015             VARCHAR2(255),                             /*备注             */                                                                               
   PURGA016             VARCHAR2(1),                               /*审核状态         */                                                                               
   PURGA017             INTEGER,                                   /*录入人           */                                                                               
   PURGA018             DATE,                                      /*录入日期         */                                                                                
   PURGA019             INTEGER,                                   /*审核人           */                                                                                
   PURGA020             DATE,                                      /*审核日期         */
   PURGA021             VARCHAR2(1)                not null,       /*来源单据类型     */--1.手工录入2.采购入库3.销退单
   PURGA022             VARCHAR2(30),                              /*来源单号         */--20111108 add by xiechun
   PURGA023             VARCHAR2(1),                               /*配送方式         */--20111108 add by xiechun1.统配2.直配
   PURGA024             INTEGER,                                   /*退货客户         */ --20111117 add by xiechun
   PURGA025             VARCHAR2(30),			           /*联系人	      */ --20111117 add by xiechun
   PURGA026             VARCHAR2(30),			           /*联系电话	      */ --20111117 add by xiechun
   PURGA027             VARCHAR2(255),                             /*地址             */ --20111117 add by xiechun
   PURGA028             VARCHAR2(1),                               /*退货方式         */ --20120209 add by xiechun1.送货2.取货
   PURGA029             INTEGER                           ,        /*退货原因         */ --20120828 add by xiechun
   PURGA030             VARCHAR2(1),                               /*结案状态         */ --20130107 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_PURGA primary key (PURGA_ID)
);
create unique index AK_TB_PURGA on TB_PURGA (PURGA002,PURGA003);
create sequence SEQ_TB_PURGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURGA to public;
grant index  on TB_PURGA to public;
grant update on TB_PURGA to public; 
grant delete on TB_PURGA to public;  
grant insert on TB_PURGA to public; 
grant select on SEQ_TB_PURGA to public;   