/*
================================================================================
表结构代码:TB_PURDF
表结构名称:采购订单作废分配明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURDF;
drop index AK_TB_PURDF;
drop table TB_PURDF;
create table TB_PURDF  (
   PURDF_ID               INTEGER                   not null,             /*作废分配明细ID      */
   PURDF001               INTEGER                   not null,             /*作废单主表ID        */
   PURDF002               INTEGER                   not null,             /*作废单作废明细ID    */
   PURDF003               INTEGER,                                        /*单据类型            */ --1.要货单 2 销售单 3. 出样申请单4.补件申请单
   PURDF004               INTEGER,                                        /*来源单据ID          */
   PURDF005               INTEGER,                                        /*来源单据明细ID      */
   PURDF006		  INTEGER,                                        /*来源营运组织        */
   PURDF007               NUMBER(18,3)              not null,             /*可作废数量          */
   PURDF008               NUMBER(18,3)              not null,             /*作废数量            */
   PURDF009               VARCHAR2(30), 				  /*来源单号            */ --add by 20100529
   PURDF010               INTEGER                   not null,             /*采购订单分配明细ID  */ --20110409 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*建立人员            */
   USER_GROUP             VARCHAR2(12),                                   /*建立人员部门        */                               
   CREATE_DATE            DATE,                                           /*建立日期            */
   MODIFIER               VARCHAR2(12),                                   /*修改人员            */
   MODI_DATE              DATE,                                           /*修改日期            */
   FLAG                   NUMBER(1),                                      /*资料状态            */
   constraint PK_TB_PURDF primary key (PURDF_ID)
);
create unique index AK_TB_PURDF on TB_PURDF (PURDF001,PURDF001);
create sequence SEQ_TB_PURDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDF to public;
grant index  on TB_PURDF to public;
grant update on TB_PURDF to public; 
grant delete on TB_PURDF to public;  
grant insert on TB_PURDF to public; 
grant select on SEQ_TB_PURDF to public;   