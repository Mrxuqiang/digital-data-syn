/*20120928 add by gaoxl for crm 增加潜在金额pubtb016字段
  20130719 add by gaoxl for 红星：PUBTB021~PUBTB023
  20130806 add by gaoxl for 红星，增加装修状态字段
  20130818 add by gaoxl for 红星：add PUBTB024
*/
/*
================================================================================
表结构代码:TB_PUBTB
表结构名称:潜在用户信息概览表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBTB;
drop index AK_TB_PUBTB;
drop table TB_PUBTB;
create table TB_PUBTB  (
   PUBTB_ID             INTEGER                   not null, /*卡片ID             */
   PUBTB001             INTEGER                   not null, /*主表ID             */
   PUBTB002             VARCHAR2(8)               not null, /*房屋现状装修状态           */
   PUBTB003             VARCHAR2(8)               not null, /*购买性质 购买原因          */
   PUBTB004             VARCHAR2(16) ，                     /*意向说明           */
   PUBTB005             NUMBER(10),                         /*预算金额 购买预算          */--20110720 modify by xiechun 预算金额
   PUBTB006             DATE ,                              /*购买时间           */
   PUBTB007             VARCHAR2(1),                        /*购买意向度         */
   PUBTB008             VARCHAR2(30),                       /*竞争对手           */
   PUBTB009             INTEGER,             not null  /*跟单人             */
   PUBTB010             NUMBER(10),                         /*成交金额           */
   PUBTB011             VARCHAR2(30),                       /*销售单号           */
   PUBTB012             VARCHAR2(8),                         /*状态               */
   PUBTB013             VARCHAR2(255),                      /*备注               */
   PUBTB014             VARCHAR2(1),                        /*住宅类型           */--20110720 add by xiechun
   PUBTB015             NUMBER(10),                         /*住房面积           */ --20110720 add by xiechun
   --PUBTB016             VARCHAR2(1),                        /*潜在金额           */ --20121106 mark by shizhan
   PUBTB016             NUMBER(28,2),                       /*购买预算           */ --20121106 modi by shizhan
   PUBTB017             VARCHAR2(1),                        /*房屋面积           */ --20121010 add by shizhan
   PUBTB018             VARCHAR2(1),                        /*预购计划           */ --20121010 add by shizhan
   PUBTB019             VARCHAR2(60),                       /*喜爱品牌           */ --20121010 add by shizhan
   PUBTB020             VARCHAR2(1),                        /*偏好风格          */ --20121010 add by shizhan
   PUBTB021             VARCHAR2(1),                        /*户型               */ 
   PUBTB022             NUMBER(10),                         /*面积               */ 
   PUBTB023             VARCHAR2(1),                        /*装修进度           */
   PUBTB024             VARCHAR2(1),                        /*购买产品品类*/  
   CREATE_USER          VARCHAR2(12),                       /*建立人员           */
   USER_GROUP           VARCHAR2(12),                       /*建立人员部门       */                               
   CREATE_DATE          DATE,                               /*建立日期           */
   MODIFIER             VARCHAR2(12),                       /*修改人员           */
   MODI_DATE            DATE,                               /*修改日期           */
   FLAG                 NUMBER(1),                          /*资料状态           */
   constraint PK_TB_PUBTB primary key (PUBTB_ID)
);
create unique index AK_TB_PUBTB on TB_PUBTB (PUBTA001);
create sequence SEQ_TB_PUBTB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTB to public;
grant index  on TB_PUBTB to public;
grant update on TB_PUBTB to public; 
grant delete on TB_PUBTB to public;  
grant insert on TB_PUBTB to public; 
grant select on SEQ_TB_PUBTB to public;  
