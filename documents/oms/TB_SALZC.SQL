/*
================================================================================
表结构代码:TB_SALZC
表结构名称:线上支付流水主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALZC;
drop index AK_TB_SALZC;
drop table TB_SALZC;
create table TB_SALZC  (
   SALZC_ID             INTEGER                         not null,  /*流水表ID           */
   SALZC001             INTEGER,                                   /*营运组织ID         */
   SALZC002             VARCHAR2(30)                            ,  /*营运组织代码       */
   SALZC003             VARCHAR2(80)                            ,  /*营运组织名称       */
   SALZC004             INTEGER,                                   /*销售单ID           */
   SALZC005             VARCHAR2(30),                              /*销售单号           */
   SALZC006             VARCHAR2(2)                     not null,  /*支付状态1.待扫描（已生成QR,未扫描或是扫描失败失败也属于待扫描）2.扫描成功支付中 3.扫描支付成功 4.扫描取消支付 5. oms主动终止线上支付成功 6.主动终止失败，网络请求异常*/
   SALZC007             VARCHAR2(80),                              /*交易流水号（yyyymmddxxxxxxxx） */
   SALZC008             NUMBER(12,2),                              /*销售待支付总金额   */
   SALZC009             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SALZC primary key (SALZC_ID)
);
create unique index AK_TB_SALZC on TB_SALZC (SALZC007);
create sequence SEQ_TB_SALZC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALZC to public;
grant index  on TB_SALZC to public;
grant update on TB_SALZC to public; 
grant delete on TB_SALZC to public;  
grant insert on TB_SALZC to public; 
grant select on SEQ_TB_SALZC to public;   