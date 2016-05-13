20140811 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_PMTYA
表结构名称:明折明扣促销表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTYA;
drop index AK_TB_PMTYA;
drop table TB_PMTYA;
create table TB_PMTYA  (
   PMTYA_ID             INTEGER                         not null,  /*明折明扣促销ID             */
   PMTYA001             INTEGER                         not null,  /*单别id           */
   PMTYA002             VARCHAR2(30)                    not null,  /*明折明扣促销单号           */
   PMTYA003             INTEGER                         not null,  /*合同id           */
   PMTYA004             INTEGER                         not null,  /*商户id           */
   PMTYA005             INTEGER                         not null,  /*主品牌id           */
   PMTYA006             INTEGER                         not null,  /*主系列id           */
   PMTYA007             INTEGER                         not null,  /*展位id           */
   PMTYA008             INTEGER,				   /*楼栋id           */
   PMTYA009             INTEGER,				   /*楼层id           */
   PMTYA010             VARCHAR2(1)                     not null,  /*活动类型  1.金额套餐 2.数量套餐 3.商品套餐 4.预定时间 5.预付款比例 6.特定时间 */
   PMTYA011             NUMBER(12,2),				   /*促销金额1           */
   PMTYA012             NUMBER(12,2),				   /*促销金额2           */
   PMTYA013             NUMBER(12,2),				   /*促销金额3           */
   PMTYA014             INTEGER,				   /*促销件数1          */
   PMTYA015             INTEGER,				   /*促销件数2          */
   PMTYA016             INTEGER,				   /*预付款比例           */
   PMTYA017             INTEGER,				   /*提前预定时间（天数）        */
   PMTYA018             date,					   /*特定时间        */
   PMTYA019             INTEGER,				   /*促销金额1折扣率（%）           */
   PMTYA020             DATE				not null,  /*录入日期           */
   PMTYA021             INTEGER				not null,  /*录入人id           */
   PMTYA022             DATE				not null,  /*审核日期           */
   PMTYA023             INTEGER				not null,  /*审核人id           */
   PMTYA024             VARCHAR2(1)			not null,  /*审核状态    N:未审核 Y:已审核 default N       */
   PMTYA025             VARCHAR2(255),				   /*促销描述 */
   PMTYA026             INTEGER,				   /*促销金额2折扣率（%）           */
   PMTYA027             INTEGER,				   /*促销金额3折扣率（%）           */
   PMTYA028             INTEGER,				   /*促销件数1折扣率（%）           */
   PMTYA029             INTEGER,				   /*促销件数2折扣率（%）           */
   PMTYA030             INTEGER,				   /*预付款比例折扣率（%）           */
   PMTYA031             INTEGER,				   /*提前预定时间折扣率（%）           */
   PMTYA032             INTEGER,				   /*特定时间折扣率（%）           */

   await_appr_group     VARCHAR2(255),                             /*待审批角色               */
   await_appr_user      VARCHAR2(255),                             /*待审批用户               */
   approved_group       VARCHAR2(255),                             /*已审批角色               */
   approved_user        VARCHAR2(255),                             /*已审批用户               */
   appr_status          VARCHAR2(1)                                /*审批状态 1.已通过  2.未通过 3.审批中 4.已失效
   start_appr_group     VARCHAR2(30)                               /*发起审批角色               */
   start_appr_user      VARCHAR2(30)                               /*发起审批用户               */    
   appr_memo            VARCHAR2(255),                             /*审批备注*/                     
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PMTYA primary key (PMTYA_ID)
);
create unique index AK_TB_PMTYA on TB_PMTYA (PMTYA002,PMTYA003,PMTYA004);
create sequence SEQ_TB_PMTYA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTYA to public;
grant index  on TB_PMTYA to public;
grant update on TB_PMTYA to public; 
grant delete on TB_PMTYA to public;  
grant insert on TB_PMTYA to public; 
grant select on SEQ_TB_PMTYA to public;   