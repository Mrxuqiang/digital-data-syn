/*
================================================================================
表结构代码:TB_PURFC
表结构名称:采购入库单二级子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURFC;
drop index AK_TB_PURFC;
drop table TB_PURFC;
create table TB_PURFC  (
   PURFC_ID         	    INTEGER                  not null,              /*入库二级明细ID   */      
   PURFC001         	    INTEGER                  not null,              /*入库明细ID       */      
   PURFC002         	    INTEGER,                                        /*入库单ID         */          
   PURFC003               INTEGER,                                        /*来源类型         */
   PURFC004               INTEGER,                                        /*来源项次ID       */
   PURFC005               INTEGER,                                        /*来源项次明细ID   */
   PURFC006		  INTEGER,                                        /*来源门店         */
   PURFC007               INTEGER                   not null,             /*商品ID           */-- mark 20100330
   PURFC008               INTEGER,                                        /*维度1            */-- mark 20100330
   PURFC009               INTEGER,                                        /*维度2            */-- mark 20100330
   PURFC010               INTEGER,                                        /*维度3            */-- mark 20100330
   PURFC011               INTEGER,                                        /*维度4            */-- mark 20100330
   PURFC012               INTEGER,                                        /*维度5            */-- mark 20100330
   PURFC013               NUMBER(18,3)              not null,             /*入库分配量       */ 
   PURFC014               INTEGER                   not null,             /*二级收货明细ID   */ 	  
   PURFC015               NUMBER(18,3)              not null,             /*来源单据数量     */ 
   PURFC016               NUMBER(18,3)              not null,             /*来源单据已入库量 */ 
   PURFC017               VARCHAR2(12),                                   /*备注             */ add bu hansf 20100619
   PURFC018               NUMBER(18,3)                      ,             /*备货量           */ add bu hansf 20101105
   PURFC019               VARCHAR2(1),                                    /*是否套件           */--1 套件 0 子件 20111114 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*建立人员         */
   USER_GROUP             VARCHAR2(12),                                   /*建立人员部门     */                              
   CREATE_DATE            DATE,                                           /*建立日期         */
   MODIFIER               VARCHAR2(12),                                   /*修改人员         */
   MODI_DATE              DATE,                                           /*修改日期         */
   FLAG                   NUMBER(1),                                      /*资料状态         */
   constraint PK_TB_PURFC primary key (PURFC_ID)
);
create unique index AK_TB_PURFC on TB_PURFC (PURFC003,PURFC004,PURFC005,PURFC006,PURFC007,PURFC008,PURFC009,PURFC010,PURFC011,PURFC012);
create sequence SEQ_TB_PURFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFC to public;
grant index  on TB_PURFC to public;
grant update on TB_PURFC to public; 
grant delete on TB_PURFC to public;  
grant insert on TB_PURFC to public; 
grant select on SEQ_TB_PURFC to public;   