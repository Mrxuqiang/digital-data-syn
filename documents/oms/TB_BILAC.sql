/*
20130807 add by gaoxl for add bilac032
*/

/*
================================================================================
表结构代码:TB_BILAC
表结构名称:先行赔付单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILAC;
drop index AK_TB_BILAC;
drop table TB_BILAC;
create table TB_BILAC  (
   BILAC_ID             INTEGER                         not null,  /*先行赔付主ID         */
   BILAC001             INTEGER                         not null,  /*赔付单别             */
   BILAC002             VARCHAR2(30)                    not null,  /*赔付单号             */
   BILAC003             DATE                            not null,  /*单据日期             */
   BILAC004             INTEGER                         not null,  /*投诉单号ID           */
   BILAC005             INTEGER ,                                  /*销售单号ID           */
   BILAC006             VARCHAR2(30),                              /*顾客姓名             */
   BILAC007             VARCHAR2(30),                              /*电话                 */
   BILAC008             VARCHAR2(255),                             /*地址                 */
   BILAC009             INTEGER,                                   /*营运组织             */
   BILAC010             INTEGER,                                   /*商户ID               */
   BILAC011             INTEGER,                                   /*展位ID               */
   BILAC012             INTEGER,                                   /*合同ID               */
   BILAC013             INTEGER,                                   /*品牌ID               */
   BILAC014             VARCHAR2(1),                               /*赔付事由             */
   BILAC015             NUMBER(22,2),                              /*赔付总额             */
   BILAC016             VARCHAR2(1),                               /*赔付方式             */
   BILAC017             VARCHAR2(1),                               /*商户质保金           */
   BILAC018             NUMBER(22,2),                              /*质保金金额           */
   BILAC019             VARCHAR2(1),                               /*商场经费             */
   BILAC020             NUMBER(22,2),                              /*商场经费金额         */
   BILAC021             VARCHAR2(1),                               /*其他                 */
   BILAC022             NUMBER(22,2),                              /*其他金额             */
   BILAC023             VARCHAR2(80),                              /*其他事由说明         */
   BILAC024             NUMBER(22,2),                              /*已支付金额           */
   BILAC025             NUMBER(22,2),                              /*已收回金额           */
   BILAC026             INTEGER,                                   /*费用项目             */
   BILAC027             INTEGER,                                   /*录入人               */
   BILAC028             DATE,                                      /*录入日期             */
   BILAC029             VARCHAR2(1),                               /*单据状态             */
   BILAC030             INTEGER,                                   /*审核人               */
   BILAC031             DATE,                                      /*审核日期             */ 
   BILAC032             INTEGER,                                   /*费用单号             */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                    /*资料状态             */
   constraint PK_TB_BILAC primary key (BILAC_ID)
);
create unique index AK_TB_BILAC on TB_BILAC (BILAC004,FLAG);
create sequence SEQ_TB_BILAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAC to public;
grant index  on TB_BILAC to public;
grant update on TB_BILAC to public; 
grant delete on TB_BILAC to public;  
grant insert on TB_BILAC to public; 
grant select on SEQ_TB_BILAC to public;   