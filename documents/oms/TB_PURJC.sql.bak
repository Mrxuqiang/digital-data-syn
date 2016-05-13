/*
================================================================================
表结构代码:TB_PURJC
表结构名称:收货通知单二级子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURJC;
drop index AK_TB_PURJC;
drop table TB_PURJC;
create table TB_PURJC  (
   PURJC_ID         	    INTEGER                  not null,       /*收货二级明细ID  */      
   PURJC001         	    INTEGER                  not null,       /*收货明细ID      */      
   PURJC002         	    INTEGER,                                 /*收货单ID        */          
   PURJC003               INTEGER,                                 /*来源类型        */
   PURJC004               INTEGER,                                 /*来源项次ID      */
   PURJC005               INTEGER,                                 /*来源项次明细ID  */
   PURJC006		  INTEGER,                                 /*来源门店        */
   PURJC007               INTEGER                   not null,      /*商品ID          */ --mark 20100329
   PURJC008               INTEGER,                                 /*维度1           */ --mark 20100329
   PURJC009               INTEGER,                                 /*维度2           */ --mark 20100329 
   PURJC010               INTEGER,                                 /*维度3           */ --mark 20100329
   PURJC011               INTEGER,                                 /*维度4           */ --mark 20100329
   PURJC012               INTEGER,                                 /*维度5           */ --mark 20100329
   PURJC013               NUMBER(18,3)              not null,      /*预计分配量      */ --modify 20100329
   PURJC014               NUMBER(18,3)  , 			   /*实际收货量      */
   PURJC015               INTEGER,                                 /*二级采购明细ID  */
   PURJC016               NUMBER(18,3)  , 			   /*来源单数量      */
   PURJC017               NUMBER(18,3)  , 			   /*来源单订货的数量*/
   PURJC018               NUMBER(18,3)  , 			   /*来源单已经入库数量*/
   PURJC019               VARCHAR2(255),                           /*备注            */ add by hansf 20100619
   PURJC020               NUMBER(18,3)  , 			   /*备货量          */ add by hansf 20101105
   PURJC021               NUMBER(18,3),              		   /*作废量          */--20110218 add by xiechun
   CREATE_USER            VARCHAR2(12),                            /*建立人员        */
   USER_GROUP             VARCHAR2(12),                            /*建立人员部门    */                              
   CREATE_DATE            DATE,                                    /*建立日期        */
   MODIFIER               VARCHAR2(12),                            /*修改人员        */
   MODI_DATE              DATE,                                    /*修改日期        */
   FLAG                   NUMBER(1),                               /*资料状态        */
   constraint PK_TB_PURJC primary key (PURJC_ID)
);
create unique index AK_TB_PURJC on TB_PURJC (PURJC003,PURJC004,PURJC005,PURJC006,PURJC007,PURJC008,PURJC009,PURJC010,PURJC011,PURJC012);
create sequence SEQ_TB_PURJC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURJC to public;
grant index  on TB_PURJC to public;
grant update on TB_PURJC to public; 
grant delete on TB_PURJC to public;  
grant insert on TB_PURJC to public; 
grant select on SEQ_TB_PURJC to public;   